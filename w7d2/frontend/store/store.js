import { createStore } from 'redux';
import rootReducer from '../reducers/root_reducer';
import {applyMiddleware} from 'redux';

const configureStore = (preloadedState = {}) => {
  const store = createStore(rootReducer, preloadedState, applyMiddleware(addLoggingToDispatch));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
};

const addLoggingToDispatch = (store) => {
  return function (next) {
    return (action) => {
      console.log(store.getState());
      console.log(action);
      next(action);
      console.log(store.getState());
    };
  };
};



const silly = (store) => {
  return function (next) {
    console.log(next);
  };
};


export default configureStore;
