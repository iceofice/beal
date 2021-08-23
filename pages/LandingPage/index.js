import React from "react";
import { StatusBar } from "expo-status-bar";
import { Image, SafeAreaView, TouchableOpacity, View } from "react-native";

import styles from "./styles";
import colors from "../../assets/colors/colors";
import { Text } from "../../components";

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

			<TouchableOpacity style={styles.primaryButton}>
				<Text size={16} weight="bold">
					Register
				</Text>
			</TouchableOpacity>
			<TouchableOpacity style={styles.secondaryButton}>
				<Text size={16} weight="bold">
					Login
				</Text>
			</TouchableOpacity>
		</SafeAreaView>
	);
};

export default LandingPage;
