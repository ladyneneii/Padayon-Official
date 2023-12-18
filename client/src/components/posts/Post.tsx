import React, { useEffect, useState, useRef } from "react";
import { ButtonProps } from "../Button";
import Button from "../Button";

interface PostComponentProps extends ButtonProps {
  postRef: React.RefObject<HTMLTextAreaElement>;
  onChange: (e: React.ChangeEvent<HTMLTextAreaElement>) => void;
  onChangeRemark: (e: React.ChangeEvent<HTMLInputElement>) => void;
  replyMode: boolean;
  setShowReplyForm?: React.Dispatch<React.SetStateAction<boolean>>;
  postReplyLevel: number;
  showRemark: boolean;
  setShowRemark: React.Dispatch<React.SetStateAction<boolean>>;
  remarkRef: React.RefObject<HTMLInputElement>;
  privacyRef: React.RefObject<HTMLSelectElement>;
  setDummyState: React.Dispatch<React.SetStateAction<boolean>>;
}

const Post = ({
  postRef,
  onChange,
  onChangeRemark,
  color,
  onClick,
  disabled,
  children,
  replyMode,
  setShowReplyForm,
  postReplyLevel,
  showRemark,
  setShowRemark,
  remarkRef,
  privacyRef,
  setDummyState
}: PostComponentProps) => {
  const replyIndent = postReplyLevel === 0 ? 65 : replyMode ? 115 : 0;


  const handleReplyCancel = () => {
    if (setShowReplyForm) {
      setShowRemark(false)
      setShowReplyForm(false);
    }
  };

  const handleTriggering = () => {
    setShowRemark(true);
    remarkRef.current?.focus();
  };

  useEffect(() => {
    if (showRemark && remarkRef.current) {
      remarkRef.current.focus();
    }
    setDummyState((prev) => !prev);
    // console.log(remarkRef.current);
  }, [showRemark]);

  const handleTriggeringCancel = () => {
    // empty the value in remark input
    if (remarkRef.current) {
      remarkRef.current.value = "";
    }
    setShowRemark(false);
    postRef.current?.focus();
  };

  return (
    <>
      <div
        style={{
          marginLeft: `${replyIndent}px`,
          width: "100%",
        }}
      >
        <div className="form-floating mb-3">
          <textarea
            className="form-control"
            placeholder="What's on your mind?"
            ref={postRef}
            onChange={onChange}
          ></textarea>
          <label htmlFor="post">What's on your mind?</label>
        </div>
        {showRemark && (
          <div className="mb-3">
            <label className="form-label">Trigger Warnings:</label>
            <input
              type="text"
              id="remark"
              ref={remarkRef}
              onChange={onChangeRemark}
              className="form-control"
              placeholder="e.g. eating disorder, violence, etc."
            />
          </div>
        )}
        <div className="mb-3">
          <label className="form-label">Privacy</label>
          <select
            className="form-select"
            id="privacy"
            ref={privacyRef}
            defaultValue="Everyone"
            style={{ width: "15%" }}
          >
            <option value="Everyone">Everyone</option>
            <option value="MHP">MHP</option>
            <option value="Followers">Followers</option>
            <option value="Friends">Friends</option>
          </select>
        </div>
        <Button color={color} onClick={onClick} disabled={disabled}>
          {children}
        </Button>
        {!showRemark ? (
          <Button color="primary" onClick={handleTriggering} disabled={false}>
            Mark this as triggering
          </Button>
        ) : (
          <Button
            color="primary"
            onClick={handleTriggeringCancel}
            disabled={false}
          >
            Unmark as triggering
          </Button>
        )}
        {replyMode && (
          <Button color="danger" onClick={handleReplyCancel} disabled={false}>
            Cancel
          </Button>
        )}
      </div>
    </>
  );
};

export default Post;
