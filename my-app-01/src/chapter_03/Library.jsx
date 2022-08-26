import React from "react";
import Book from "./Book";

function Library(props) {
  return (
    <div>
      <Book name="처음 만난 파이썬" numOfPage="{300}" />
      <Book name="First JAVA" numOfPage="{400}" />
      <Book name="Web Application" numOfPage="{450}" />
    </div>
  );
}

export default Library;