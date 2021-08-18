import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import { useFonts, Mulish_300Light, Mulish_700Bold } from "@expo-google-fonts/mulish";

import LandingPage from "./components/LandingPage";

const Stack = createNativeStackNavigator();

export default function App() {
	let [fontsLoaded] = useFonts({
		Mulish_300Light,
		Mulish_700Bold,
	});
	if (!fontsLoaded) {
		return; //Add App Loader
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
