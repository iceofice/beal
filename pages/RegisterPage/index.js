import React from "react";
import { Image, View, StyleSheet, KeyboardAvoidingView, Platform, ScrollView } from "react-native";

import colors from "../../assets/colors/colors";
import { Button, Text, InputText } from "../../components";

const RegisterPage = () => {
	return (
		<KeyboardAvoidingView
			style={{ flex: 1 }}
			behavior={Platform.OS === "ios" ? "padding" : "height"}
		>
			<ScrollView style={{ flex: 1 }} contentContainerStyle={styles.container}>
				<View style={styles.iconWrapper}>
					<Image source={require("../../assets/images/icon.png")} style={styles.icon} />
				</View>

				<View style={styles.formWrapper}>
					<Text weight="bold" size={36}>
						Register
					</Text>
					<View style={{ flex: 1.5, justifyContent: "space-between", marginVertical: 40 }}>
						<InputText />
						<InputText />
						<InputText />
					</View>
					<View style={{ flex: 2, alignItems: "center" }}>
						<Button style={{ marginVertical: 12 }} title="Register" />
						<View style={{ flexDirection: "row" }}>
							<Text weight="light" size={14} color={colors.textLight}>
								Already have an account?
							</Text>
							<Text
								weight="bold"
								size={14}
								color={colors.text}
								style={{
									marginHorizontal: 4,
									borderBottomColor: colors.text,
									borderBottomWidth: 1,
								}}
							>
								Login
							</Text>
							<Text weight="light" size={14} color={colors.textLight}>
								here!
							</Text>
						</View>
					</View>
				</View>
				<View style={styles.separator}>
					<View style={styles.line} />
					<View>
						<Text size={14} color={colors.textLight} style={{ paddingHorizontal: 8 }}>
							Register With
						</Text>
					</View>
					<View style={styles.line} />
				</View>
				<View style={styles.authWrapper}>
					<Image
						source={require("../../assets/images/google-circle.png")}
						style={styles.socialMedia}
					/>
					<Image
						source={require("../../assets/images/google-circle.png")}
						style={styles.socialMedia}
					/>
				</View>
			</ScrollView>
		</KeyboardAvoidingView>
	);
};

const styles = StyleSheet.create({
	container: {
		flex: 1,
		flexDirection: "column",
		justifyContent: "space-between",
		alignItems: "center",
		backgroundColor: colors.background,
		paddingBottom: "10%",
	},
	iconWrapper: {
		flex: 1,
		marginBottom: 54,
	},
	icon: {
		flex: 1,
		width: 100,
		resizeMode: "contain",
	},
	formWrapper: {
		flex: 4,
		alignItems: "center",
	},
	separator: {
		marginHorizontal: 100,
		flexDirection: "row",
		alignItems: "center",
	},
	line: {
		flex: 1,
		height: 1,
		backgroundColor: colors.textLight,
	},
	authWrapper: {
		flex: 1,
		flexDirection: "row",
	},
	socialMedia: {
		width: 42,
		aspectRatio: 1,
		resizeMode: "contain",
		marginHorizontal: 4,
		marginTop: 12,
	},
});

export default RegisterPage;
