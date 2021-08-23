import React from "react";
import { StatusBar } from "expo-status-bar";
import { Image, SafeAreaView, View } from "react-native";

import styles from "./styles";
import colors from "../../assets/colors/colors";
import { Button, Text } from "../../components";

const LandingPage = () => {
	return (
		<SafeAreaView style={styles.container}>
			<StatusBar style="light" />

			<Image source={require("../../assets/images/icon-with-text.png")} style={styles.icon} />
			<View style={styles.imageWrapper}>
				<Text size={24} weight="light" color={colors.textLight}>
					Home For Barterers
				</Text>
				<Image
					source={require("../../assets/images/landing-page.png")}
					style={styles.landingPageImage}
				/>
				<Text size={18} weight="light" color={colors.textLight}>
					Let’s begin your barter journey!
				</Text>
			</View>
			<Button title="Register" onPress={() => alert("Register")} />
			<Button title="Login" type="secondary" onPress={() => alert("Login")} />
		</SafeAreaView>
	);
};

export default LandingPage;
