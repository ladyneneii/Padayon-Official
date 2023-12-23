import React, { useEffect, useState } from "react";
import "../styles/components/wrongPage.css";

interface WrongPageComponentProps {
  message: string;
}

const WrongPage = ({ message }: WrongPageComponentProps) => {
  return (
    <>
      <div className="text-center page-height p-3 error-message">
        <h1>{message}</h1>
      </div>
    </>
  );
};

export default WrongPage;
