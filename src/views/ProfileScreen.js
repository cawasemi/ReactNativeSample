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

export default class ProfileScreen extends React.Component {
    render() {
        const {navigate} = this.props.navigation;
        return (
            <View>
                <Text>Profile</Text>
                <Button
                title="Next"
                onPress={() => this.props.navigation.push('Profile', {name: 'Next'})}
                />
                <Button
                title="back"
                onPress={() => this.props.navigation.goBack()}
                />
            </View>
        )
    }
}