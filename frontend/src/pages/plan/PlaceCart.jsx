import { Map, MapMarker, CustomOverlayMap, Polyline } from 'react-kakao-maps-sdk';
import { useState, Fragment } from 'react';
import { Link } from 'react-router-dom';
// color pallete
const colorPallete = ['red', 'blue', 'green'];

// 입력 받은 여행 기간을 불러와서 배열에 저장
const dummyDays = [
  {
    day: 1,
    course: [],
  },
  {
    day: 2,
    course: [],
  },
  {
    day: 3,
    course: [],
  },
];

const dummyCart = [
  {
    position: {
      lat: 37.4978288,
      lng: 127.0448612,
    },
    content: '스타벅스1',
    adressName: '강남구 저기어디로',
    placeURL: 'https://place.map.kakao.com/17884744',
    categoryCode: '카페',
    roadAddressName: '로',
    color: 'black',
    day: 0,
  },
  {
    position: {
      lat: 37.4978288,
      lng: 127.0451612,
    },
    content: '스타벅스2',
    adressName: '강남구 저기어디로',
    placeURL: 'https://place.map.kakao.com/17884744',
    categoryCode: '카페',
    roadAddressName: '로',
    color: 'black',
    day: 0,
  },
  {
    position: {
      lat: 37.4978288,
      lng: 127.0445612,
    },
    content: '스타벅스3',
    adressName: '강남구 저기어디로',
    placeURL: 'https://place.map.kakao.com/17884744',
    categoryCode: '카페',
    roadAddressName: '로',
    color: 'black',
    day: 0,
  },
];
const points = []
// dummyCart.map((point) => {
//   points.push({ lat: point.position.lat, lng: point.position.lng })
//   // console.log(points)
// })


const PlaceCart = () => {
  const [color, setColor] = useState('');
  const [places, setPlaces] = useState(dummyCart);

  {
    /* 버튼을 크릭할때마다 다른 색깔로 마커 바꾸기 */
  }
  function handleMarkerClick(content) {
    // console.log(content);
    for (let i = 0; i < places.length; i++) {
      if (places[i].content == content) {
        places[i].color = color;
        setPlaces([...places]);
        points.push({ lat: places[i].position.lat, lng: places[i].position.lng })
        break;
      }
    }
  }
  // 날짜에 해당하는 장소들 리스트 보여주기
  function pushPlacePerDay() {
    for (let i = 0; i < places.length; i++) {
      for (let j = 0; j < dummyDays.length; j++) {
        if (places[i].color === color && colorPallete[j] === color) {
          // console.log('??', places[i].color);
          // dummydays에 push하기
          dummyDays[j].course.push(places[i]);
        }
      }
    }
    console.log(dummyDays);
    alert('경로가 저장되었습니다.');
  }
  return (
    <div >
      <div style={{ position: 'absolute', left: '0vw', top: '8vh', backgroundColor: 'white', zIndex: '2' }}>
        {/* 여행 기간 만큼 버튼 자동생성하기 */}
        {/*  */}
        <button onClick={() => setColor(colorPallete[0])}>day1</button>
        <button onClick={() => setColor(colorPallete[1])}>day2</button>
        <button onClick={() => setColor(colorPallete[2])}>day3</button>
      </div>
      {/*  */}

      <Map
        center={{
          // 지도의 중심좌표 장소바구니 목록들중 중심 좌표로 들어오게 하기
          lat: 37.4978288,
          lng: 127.0448612,
        }}
        style={{
          // 지도의 크기
          width: '100%',
          height: '100vh',
        }}
        level={4} // 지도의 확대 레벨
      >

        <Polyline
          path={[points]}
          strokeWeight={5} // 선의 두께 입니다
          strokeColor={'#FFAE00'} // 선의 색깔입니다
          strokeOpacity={0.7} // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
          strokeStyle={'solid'} // 선의 스타일입니다
        />
        {places.map((place) => (
          // 북마크된 장소 띄우기.
          <Fragment key={`cart-${place.content}`}>
            {/* <MapMarker // 마커를 생성합니다
              position={cart.position}
            /> */}
            <CustomOverlayMap position={place.position}>
              <div
                onClick={() => handleMarkerClick(place.content)}
                style={{ width: '32px', height: '32px', backgroundColor: place.color }}
              ></div>
            </CustomOverlayMap>
          </Fragment>
        ))}
      </Map>
      <div style={{ position: 'absolute', right: '0vw', bottom: '2vh', backgroundColor: 'white', zIndex: '2' }}>
        <button onClick={pushPlacePerDay}>경로 추가</button>
        {/* 이어진 경로가 있는 상태에서 경로 추가 누르면 선 안 없어지고 냅두기, 경로가 추가되지 않은 상태에서 다른날 누르면 이어진선 사라지게하기 */}
        <Link to={'/'}>
          <button >계획 완료하기</button>
        </Link>
      </div>
    </div>
  );
};
export default PlaceCart;
