import React, { useEffect } from "react";

interface AlertComponentProps {
  color: string;
  children: string;
  setErrMsg: React.Dispatch<React.SetStateAction<string>>;
}

const Alert = ({ color, children, setErrMsg }: AlertComponentProps) => {
  useEffect(() => {
    const timeoutId = setTimeout(() => {
      setErrMsg("");
    }, 5000);

    return () => clearTimeout(timeoutId);
  });

  return (
    <div
      className={`alert alert-${color} fixed-top w-100`}
      role="alert"
    >
      {children}
    </div>
  );
};

export default Alert;
