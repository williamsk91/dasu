import { exec } from "child_process";
import { existsSync, mkdirSync, readFileSync, writeFileSync } from "fs";
import { parse as pathParse } from "path";

interface Link {
  href: string;
  title: string;
}

const isLink = (item: List | Link): item is Link =>
  (item as Link).href !== undefined;

interface List {
  list: (List | Link)[];
}

const isList = (item: List | Link): item is List =>
  Array.isArray((item as List)?.list);

/**
 * Move list parent to child and remove parent
 */
const tocWithListIndex = (toc: TOC): TOC => {
  const restruct = (item: Link | List, index: number, arr: (Link | List)[]) => {
    const next = arr[index + 1];
    if (isLink(item) && isList(next)) {
      // arr.splice(index, 1);
      next.list.unshift(item);
      return;
    }

    if (isList(item)) {
      item.list.forEach(restruct);
      return;
    }
  };

  toc.list.forEach(restruct);

  return toc;
};

const tocWithMergedLink = (toc: TOC): TOC => {
  const restruct = (item: Link | List, index: number, arr: (Link | List)[]) => {
    const next = arr[index + 1];
    if (isLink(item) && isLink(next)) {
      // arr.splice(index, 1);
      // next.list.unshift(item);
      return;
    }

    if (isList(item)) {
      item.list.forEach(restruct);
      return;
    }
  };

  toc.list.forEach(restruct);

  return toc;
};

type TOC = List;

const generateChapter = (dir: string, chapter: Link, pos: number) => {
  const filePath = chapter.href.split("#")[0];
  const file = pathParse(chapter.href);
  const fileName = file.name;

  const title = pos === 0 ? "index" : chapter.title;

  exec(
    `pandoc sicp/${filePath} -t gfm-raw_html --defaults pandoc_defaults.yml -M title="${title}" -M sidebar_position="${pos}" -s -o docs/${dir}/${fileName}.md`
  );
};

interface Category {
  label: string;
  position: number;
}

const generateList = (path: string, list: List, pos: number) => {
  // directory
  const dir = `docs/${path}`;
  if (!existsSync(dir)) mkdirSync(dir);

  const label = (list.list[0] as Link).title;
  const category: Category = {
    label,
    position: pos,
  };
  const json = JSON.stringify(category, null, 2);

  writeFileSync(`${dir}/_category_.json`, json, "utf8");
};

const generateToc = (toc: TOC) => {
  const path = [];
  const genData = (data: Link | List, pos: number) => {
    if (isLink(data)) {
      console.log("link data: ", data);
      generateChapter(path.join("/"), data, pos);
    } else {
      const dir = pathParse((data.list[0] as Link).href).name;
      path.push(dir);
      generateList(path.join("/"), data, pos);
      data.list.forEach((item, index) => {
        genData(item, index);
      });
      path.pop();
    }
  };

  genData(toc, 0);
};

const main = () => {
  const path = process.argv[2];
  const toc: TOC = JSON.parse(readFileSync(path, "utf8"));
  // console.log("toc: ", toc);
  // console.log("toc.list: ", (toc.list[3] as List).list[1]);
  tocWithListIndex(toc);
  // console.log("toc: ", toc);
  // console.log("toc.list: ", (toc.list[3] as List).list[2]);
  generateToc(toc);
};

if (require.main === module) {
  main();
}
