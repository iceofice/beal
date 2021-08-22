import React from "react";
import { StatusBar } from "expo-status-bar";
import { Text, Image, SafeAreaView, View } from "react-native";

import styles from "./styles";
import Button from "../Button";

const LandingPage = () => {
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
			<Button text="Register" onPress={() => alert("HI")} />
			<Button text="Login" type="secondary" onPress={() => alert("HI")} />
		</SafeAreaView>
	);
};

export default LandingPage;
