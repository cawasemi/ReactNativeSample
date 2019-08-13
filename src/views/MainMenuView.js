import React, {Fragment} from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
  Modal,
} from 'react-native';

import DummyView from './DummyNative.ios';

export default class MainMenuView extends React.Component {
    state = {
        modalVisible: false,
    };

    setModalVisible(visible) {
        this.setState({modalVisible: visible});
    }

    render() {
        return (
            <View>
                <Text>Main Menu</Text>
                <DummyView style={{height: 256, width: 256}}/>
                <Text>EOF</Text>
            </View>
        )
    }
}