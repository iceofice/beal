import React from "react";
import { StyleSheet, Text, Image, SafeAreaView, TouchableOpacity, View } from "react-native";
import { useFonts } from "expo-font";
import colors from "../assets/colors/colors";
import { StatusBar } from "expo-status-bar";

const LandingPage = () => {
	let [fontsLoaded] = useFonts({
		Mulish_Light: require("../assets/fonts/Mulish-Light.ttf"),
		Mulish_Bold: require("../assets/fonts/Mulish-Bold.ttf"),
	});
	if (!fontsLoaded) {
		return <Text style={styles.text1}>Error</Text>;
	} else {
		return (
			<SafeAreaView style={styles.container}>
				<StatusBar style="light" />

				{/* Change with IconWithTitle */}
				<Image source={require("../assets/images/icon.png")} style={styles.logo} />
				<View style={styles.imageWrapper}>
					<Text style={styles.slogan}>Home For Barterers.</Text>
					<Image
						source={require("../assets/images/landing-page.png")}
						style={styles.landingPageImage}
					/>
					<Text style={styles.description}>Let’s begin your barter journey!</Text>
				</View>
				<View style={styles.buttonWrapper}>
					<TouchableOpacity style={styles.primaryButton}>
						<Text style={styles.buttonText}>Register</Text>
					</TouchableOpacity>
					<TouchableOpacity style={styles.secondaryButton}>
						<Text style={styles.buttonText}>Login</Text>
					</TouchableOpacity>
				</View>
			</SafeAreaView>
		);
	}
};

const styles = StyleSheet.create({
	container: {
		flex: 1,
		alignItems: "center",
		backgroundColor: colors.background,
		paddingVertical: 90,
		paddingHorizontal: 60,
	},
	imageWrapper: {
		flex: 2,
		alignItems: "center",
		justifyContent: "center",
		paddingTop: 40,
	},
	buttonWrapper: {
		flex: 1,
		alignItems: "center",
		justifyContent: "flex-end",
	},
	logo: {
		flex: 1,
		width: 160,
		height: 160,
		resizeMode: "contain",
	},
	slogan: {
		color: colors.textLight,
		fontFamily: "Mulish_Light",
		fontSize: 24,
	},
	landingPageImage: {
		width: 250,
		height: 200,
		resizeMode: "center",
		marginVertical: 15,
	},
	description: {
		color: colors.textLight,
		fontFamily: "Mulish_Light",
		fontSize: 18,
	},
	primaryButton: {
		alignItems: "center",
		borderRadius: 31.5,
		backgroundColor: colors.primary,
		width: 147,
		height: 37,
		textAlign: "center",
		justifyContent: "center",
		marginBottom: 15,
	},
	secondaryButton: {
		alignItems: "center",
		borderRadius: 31.5,
		borderWidth: 3,
		borderColor: colors.primary,
		width: 147,
		height: 37,
		textAlign: "center",
		justifyContent: "center",
	},
	buttonText: {
		fontFamily: "Mulish_Bold",
		fontSize: 16,
		color: colors.text,
	},
});

export default LandingPage;
