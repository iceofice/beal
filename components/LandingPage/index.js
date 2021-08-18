import React from "react";
import { Text, Image, SafeAreaView, TouchableOpacity, View } from "react-native";
import { useFonts } from "expo-font";
import { StatusBar } from "expo-status-bar";
import styles from "./styles";

const LandingPage = () => {
	let [fontsLoaded] = useFonts({
		Mulish_Light: require("../../assets/fonts/Mulish-Light.ttf"),
		Mulish_Bold: require("../../assets/fonts/Mulish-Bold.ttf"),
	});
	if (!fontsLoaded) {
		return <Text style={styles.text1}>Error</Text>;
	} else {
		return (
			<SafeAreaView style={styles.container}>
				<StatusBar style="light" />

				<Image source={require("../../assets/images/icon-with-text.png")} style={styles.icon} />
				<View style={styles.imageWrapper}>
					<Text style={styles.slogan}>Home For Barterers</Text>
					<Image
						source={require("../../assets/images/landing-page.png")}
						style={styles.landingPageImage}
					/>
					<Text style={styles.description}>Let’s begin your barter journey!</Text>
				</View>
				<TouchableOpacity style={styles.primaryButton}>
					<Text style={styles.buttonText}>Register</Text>
				</TouchableOpacity>
				<TouchableOpacity style={styles.secondaryButton}>
					<Text style={styles.buttonText}>Login</Text>
				</TouchableOpacity>
			</SafeAreaView>
		);
	}
};

export default LandingPage;
