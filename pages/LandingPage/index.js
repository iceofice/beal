import React from "react";
import { StatusBar } from "expo-status-bar";
import { Image, SafeAreaView, TouchableOpacity, View } from "react-native";

import styles from "./styles";
import colors from "../../assets/colors/colors";
import { BText } from "../../components";

const LandingPage = () => {
	return (
		<SafeAreaView style={styles.container}>
			<StatusBar style="light" />

			<Image source={require("../../assets/images/icon-with-text.png")} style={styles.icon} />
			<View style={styles.imageWrapper}>
				<BText value="Home For Barterers" type="light" size={24} color={colors.textLight} />
				<Image
					source={require("../../assets/images/landing-page.png")}
					style={styles.landingPageImage}
				/>
				<BText
					value="Let’s begin your barter journey!"
					type="light"
					size={18}
					color={colors.textLight}
				/>
			</View>
			<TouchableOpacity style={styles.primaryButton}>
				<BText value="Register" type="button" />
			</TouchableOpacity>
			<TouchableOpacity style={styles.secondaryButton}>
				<BText value="Login" type="button" />
			</TouchableOpacity>
		</SafeAreaView>
	);
};

export default LandingPage;
