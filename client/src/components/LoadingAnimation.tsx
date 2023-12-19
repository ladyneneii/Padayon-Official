import React from 'react'

const LoadingAnimation = () => {
  return (
    <div className="lds-ring-container container text-center z-3 top-50 start-50 translate-middle">
      <div className="lds-ring">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>
      <p className="text-loading fw-bold">Processing...</p>
    </div>
  );
}

export default LoadingAnimation