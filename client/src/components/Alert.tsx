import React, { useEffect } from "react";

interface AlertComponentProps {
  color: string;
  children: string;
  setAlert: React.Dispatch<React.SetStateAction<boolean>>;
}

const Alert = ({ color, children, setAlert }: AlertComponentProps) => {
  useEffect(() => {
    const timeoutId = setTimeout(() => {
      setAlert(false);
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
