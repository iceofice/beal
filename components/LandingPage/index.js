import React from "react";
import { StatusBar } from "expo-status-bar";
import { Text, Image, SafeAreaView, TouchableOpacity, View } from "react-native";

import styles from "./styles";

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
			<TouchableOpacity style={styles.primaryButton}>
				<Text style={styles.buttonText}>Register</Text>
			</TouchableOpacity>
			<TouchableOpacity style={styles.secondaryButton}>
				<Text style={styles.buttonText}>Login</Text>
			</TouchableOpacity>
		</SafeAreaView>
	);
};

export default LandingPage;
