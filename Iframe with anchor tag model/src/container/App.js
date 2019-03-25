import React, { Component } from 'react';
import './App.css';
import Iframe from '../component/Iframe/Iframe';

class App extends Component {

  state = {
    // selectedurl contains the selected anchor tag href and  send  the href value as a parameter to iframe source 

    selectedUrl: '',

    // display Status is used to hide and show the iframe and normal page content

    displayStatus: false
  };


  // toggleShow is a function active when clicking anchor tag to set the display status and selected Url value



  toggleShow = (e) => {
    e.preventDefault();
    this.setState({
      selectedUrl: e.target.href,
      displayStatus: true
    })
  }



  // toggle hide is a function activate when clicking back button to set the display status false 

  toggleHide = () => {
    this.setState({
      displayStatus: false
    })
  }

  componentDidMount() {

    // anchorList contains all anchor tag in a document

    const anchorList = document.getElementsByTagName("a");

    // converting anchorList to array and making an eventListener 

    Array.from(anchorList).forEach(item => item.addEventListener("click", this.toggleShow));
  }


  render() {
    return (
      <div className="main-css">
        <button onClick={this.toggleHide.bind(this)} >Back </button>

        {/*  iframe source loading */}


        <div className={this.state.displayStatus ? '' : 'displayNone'}>
          <Iframe loadUrl={this.state.selectedUrl} />
        </div>


        {/* normal contain in that page  */}


        <div className={this.state.displayStatus ? 'displayNone' : ''}>
          <div className="center">  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>
          <br />
          <br />

          {/* contains all links in footer */}


          <footer>
          <a href="https://www.youtube.com/embed/YOUR_VIDEO_CODE">Load youtube </a>
          <br />
          <br />
          <a href="http://www.weather.gov/">Load weather </a>
          <br />
          <br />
          <a href="http://www.flipkart.com">Load flipkart </a>
          <br />
          <br />
          <a href="http://www.amazon.com">Load amazon </a>
          </footer>

          
        </div>
      </div>
    );
  }
}

export default App;
