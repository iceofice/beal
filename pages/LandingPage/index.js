import React from "react";
import { StatusBar } from "expo-status-bar";
import { Image, SafeAreaView, View } from "react-native";
import { useNavigation } from "@react-navigation/native";

import styles from "./styles";
import colors from "../../assets/colors/colors";
import { Button, Text } from "../../components";

const LandingPage = () => {
	const nav = useNavigation();
	return (
		<SafeAreaView style={styles.container}>
			<StatusBar style="light" />
			<View style={styles.iconWrapper}>
				<Image source={require("../../assets/images/icon-with-text.png")} style={styles.icon} />
			</View>
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
			<View style={{ alignItems: "center" }}>
				<Button title="Register" onPress={() => nav.navigate("Register")} />
				<Button title="Login" type="secondary" />
			</View>
		</SafeAreaView>
	);
};

export default LandingPage;
