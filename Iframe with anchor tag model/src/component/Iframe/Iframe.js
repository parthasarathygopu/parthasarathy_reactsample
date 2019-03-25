import './Iframe.css';
import React, { Component } from 'react';

class Head extends Component {
        render() {    
              return (
                <iframe src={this.props.loadUrl}  > </iframe>
              );

              
            }
          } 
export default Head;