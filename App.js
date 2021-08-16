import { StatusBar } from "expo-status-bar";
import React from "react";
import { StyleSheet, Text, Image, SafeAreaView } from "react-native";

export default function App() {
	return (
		<SafeAreaView style={styles.container}>
			<Image source={require("./assets/icon.png")} style={styles.image} />
			<Text style={styles.text1}>Beal</Text>
			<Text style={styles.text}>Home For Barterers.</Text>
			<Text style={styles.text}>Let’s begin your barter journey!</Text>
			<StatusBar style="auto" />
		</SafeAreaView>
	);
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: "#031956",
		justifyContent: "center",
		alignItems: "center",
	},
	image: {
		width: 100,
		height: 100,
		resizeMode: "contain",
	},
	text: {
		color: "#BBC2D8",
	},
});
