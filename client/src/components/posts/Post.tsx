import React, { useEffect, useState, useRef } from "react";
import empty_pfp from "../../assets/img/empty-profile-picture-612x612.jpg";
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
  setDummyState,
}: PostComponentProps) => {
  const [firebaseAvatarUrl, setFirebaseAvatarUrl] = useState("");
  const replyIndent = postReplyLevel === 0 ? 65 : replyMode ? 115 : 0;

  useEffect(() => {
    const unparsed_user_details = localStorage.getItem("user_details");

    if (unparsed_user_details) {
      const user_details = JSON.parse(unparsed_user_details);

      // firebase_avatar_url = user_details.firebase_avatar_url;
      setFirebaseAvatarUrl(user_details.firebase_avatar_url);
    } else {
      console.log("User details not found.");
    }
  });

  const handleReplyCancel = () => {
    if (setShowReplyForm) {
      setShowRemark(false);
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
        className="container-xxl mb-5"
        style={{
          marginLeft: `${replyIndent}px`,
        }}
      >
        <div className="d-flex align-items-center">
          <img
            src={firebaseAvatarUrl === "n/a" ? empty_pfp : firebaseAvatarUrl}
            alt="profile picture"
            className="rounded-circle empty_profile_picture_icon me-3"
          />
          <div className="form-floating flex-fill">
            <textarea
              className="form-control"
              placeholder="What's on your mind?"
              ref={postRef}
              onChange={onChange}
            ></textarea>
            <label htmlFor="post">What's on your mind?</label>
          </div>
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
        <div className="my-3 d-flex align-items-center">
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
          <select
            className="form-select d-inline mb-3 ms-auto"
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
      </div>
    </>
  );
};

export default Post;
