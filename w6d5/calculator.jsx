import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    result: 0,
    num1: "",
    num2: ""
    }
  }

  clear(e){
    this.setState({
    num1: "",
    num2: "",
    result: 0 });
  }

  setNum1(e){
    const num1 = parseInt(e.target.value);
    this.setState({ num1 });
  }

  setNum2(e){
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num2 });
  }

  add(e){
    const result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subtract(e){
    const result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiply(e){
    const result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divide(e){
    const result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }




  render() {
    return (
      <div>
      <input onChange={this.state.num1} value={this.state.num1}/>
      <input onChange={this.state.num2} value={this.state.num2}/>
      <button onClick={this.clear}>reset</button>
      <button onClick={this.add}>+</button>
      <button onClick={this.subtract}>-</button>
      <button onClick={this.multiply}>*</button>
      <button onClick={this.divide}>/</button>
      </div>
    );
  }

}

export default Calculator;
