import React, { useState } from 'react';
// import styled from 'styled-components';

const RecordUpload = (recordLocation) => {
  const [source, setSource] = useState();
  const [recordText, setRecordText] = useState('');

  const inputRef = React.useRef();
  const formData = {
    multipartFile: source ? source.url : 'string',
    recordDto: {
      dayId: 0,
      recordFile: 'string',
      recordText: recordText,
      latitude: recordLocation.recordLocation.center.lat,
      longitude: recordLocation.recordLocation.center.lng,
      recordType: 0,
    },
  };
  console.log(formData);

  const handleFileChange = (e) => {
    // const file = event.target.files[0]
    const imageType = e.target.files[0].type.includes('image');
    const videoType = e.target.files[0].type.includes('video');

    setSource({
      url: URL.createObjectURL(e.target.files[0]),
      image: imageType,
      video: videoType,
    });
    console.log(videoType, imageType);
  };

  const handleChoose = (e) => {
    inputRef.current.click();
  };

  const saveRecord = (e) => {
    // 기록 저장하는 post 요청
    formData.multipartFile = source.url;
    formData.recordDto.dayId = 1;
    formData.recordDto.recordFile = 1;
    formData.recordDto.recordText = 1;
    formData.recordDto.latitude = 1;
    formData.recordDto.longitude = recordLocation.formData.recordDto.recordType = 0;
    console.log(formData);
  };

  const onChange = (e) => {
    setRecordText(e.target.value);
  };

  return (
    <div className="RecordUpload">
      {source != null &&
        (source.image ? (
          <div>
            <input type="text" placeholder="제목"></input>
            <img src={source.url} alt="uploaded img" />
          </div>
        ) : (
          <div>
            <input type="text" placeholder="제목"></input>
            <video src={source.url} alt="uploaded video" />
          </div>
        ))}
      <input
        ref={inputRef}
        type="file"
        className="Record_input"
        onChange={handleFileChange}
        accept="image/*, video/*"
      />
      {/* 파일을 올리면 미리보기 생성하기 */}

      <div>
        {!source ? (
          <button className="recording-btn" onClick={handleChoose}>
            기록 남기기
          </button>
        ) : (
          <div>
            <form action="#" style={{ display: 'flex', flexDirection: 'column' }}>
              <textarea style={{ margin: '20px 0px', border: '1px solid black' }} onChange={onChange} />
              <button className="recording-btn" onClick={handleChoose}>
                다시선택하기
              </button>
              <input type="submit" className="recording-btn" value="업로드" onClick={saveRecord} />
            </form>
          </div>
        )}
      </div>
    </div>
  );
};

export default RecordUpload;
