import React, {Fragment} from 'react';
import {
    SafeAreaView,
    StyleSheet,
    ScrollView,
    View,
    Text,
    StatusBar,
    Modal,
    Button,
  } from 'react-native';
  
export default class HomeScreen extends React.Component {
    static navigationOptions = {
      title: 'Welcome',
    };
    render() {
      const {navigate} = this.props.navigation;
      return (
          <View>
            <Button
            title="Go to Jane's profile"
            onPress={() => navigate('Profile', {name: 'Jane'})}
            />
            <Button
            title="Main"
            onPress={() => navigate('MainMenu', {name: 'Jane'})}
            />
          </View>
      );
    }
  }