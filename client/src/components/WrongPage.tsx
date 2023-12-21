import React, { useEffect, useState } from "react";
import "../styles/components/wrongPage.css"

interface WrongPageComponentProps {
  message: string;
}

const WrongPage = ({message}: WrongPageComponentProps) => {
  return (
    <>
      <div className="text-center page-height">{message}</div>
    </>
  );
};

export default WrongPage;
