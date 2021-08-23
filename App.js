import React from "react";
import { Text } from "react-native";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import {
	useFonts,
	Mulish_400Regular,
	Mulish_300Light,
	Mulish_700Bold,
} from "@expo-google-fonts/mulish";

import LandingPage from "./pages/LandingPage";

const Stack = createNativeStackNavigator();

export default function App() {
	let [fontsLoaded] = useFonts({
		Mulish_400Regular,
		Mulish_300Light,
		Mulish_700Bold,
	});
	if (!fontsLoaded) {
		return <Text>Error!</Text>; //Add App Loader
	} else {
		return (
			<NavigationContainer>
				<Stack.Navigator>
					<Stack.Screen name="Home" component={LandingPage} options={{ headerShown: false }} />
				</Stack.Navigator>
			</NavigationContainer>
		);
	}
}
