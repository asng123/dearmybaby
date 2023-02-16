import PropTypes from 'prop-types';

import { useState } from 'react';
import { useNavigate } from 'react-router-dom';

// const
const RecommendFoodList = ({ restaurant }) => {
  const navigate = useNavigate();
  // console.log('?? object', restaurant.restaurantImgUrl);

  return (
    <div className="recommandList">
      <a
        onClick={() =>
          // console.log(fooditem)
          navigate(`./food-detail?food-id=${restaurant.restaurantId}`)
        }
      >
        <div className="reco-item">
          <div className="reco-info">
            <h4>{restaurant.restaurantName}</h4>
            <div className="reco-info-outline">
              <p className="outline-ptag">설명:{restaurant.restaurantMeinMenu}</p>
            </div>
            <div className="reco-catagory">{/* <p>{restaurant.catagory}</p> */}</div>
          </div>
          <div className="reco-img">
            <img src={restaurant.restaurantImgUrl} alt="restaurant" className="reco-src" />
          </div>
          {/* 소개 부분에 보여 줄 데이터 */}
          {/* 상세보기 페이지 만들어서 데이터 props 해주기 라우터 어렵다.*/}
          {/* <button onClick={navigator('../recommand-item/recommand-detail')}>상세보기</button> */}
        </div>

        {/* 디테일에 보여줄 데이터 필요하면, 새로운 컴포넌트 만들거임 */}

        {/* reccomandFood list */}
      </a>
    </div>
  );
};

export default RecommendFoodList;

RecommendFoodList.propTypes = {
  restaurant: PropTypes.any,
};
