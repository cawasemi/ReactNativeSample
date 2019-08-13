import HomeScreen from './src/views/HomeScreen'
import ProfileScreen from './src/views/ProfileScreen'
import MainMenu from './src/views/MainMenuView'

import {createStackNavigator, createAppContainer} from 'react-navigation';

const MainNavigator = createStackNavigator({
  Home: {screen: HomeScreen},
  MainMenu: {screen: MainMenu},
  Profile: {screen: ProfileScreen},
});

const App = createAppContainer(MainNavigator);

export default App;
