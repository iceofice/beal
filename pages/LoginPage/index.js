import React, { useState } from "react";
import {
	Image,
	View,
	StyleSheet,
	KeyboardAvoidingView,
	Platform,
	SafeAreaView,
	TouchableWithoutFeedback,
	Keyboard,
} from "react-native";
import CheckBox from "react-native-check-box";
import colors from "../../assets/colors/colors";
import { Button, Text, InputText } from "../../components";

const LoginPage = () => {
	const [isChecked, setChecked] = useState(true);

	const toggle = () => {
		setChecked(!isChecked);
	};

	return (
		<KeyboardAvoidingView
			style={{ flex: 1 }}
			behavior={Platform.OS === "ios" ? "padding" : "height"}
		>
			<SafeAreaView style={{ flex: 1 }}>
				<TouchableWithoutFeedback onPress={Keyboard.dismiss}>
					<View style={styles.container}>
						<CheckBox
							style={styles.checkBox}
							onClick={toggle}
							isChecked={isChecked}
							leftText={"CheckBox"}
						/>
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
							</View>
							<View style={{ flex: 2, alignItems: "center" }}>
								<Button style={{ marginVertical: 12 }} title="Register" />
								<View style={{ flexDirection: "row" }}>
									<Text weight="light" size={14} color={colors.textLight}>
										You are new here?
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
										Register
									</Text>
									<Text weight="light" size={14} color={colors.textLight}>
										now!
									</Text>
								</View>
							</View>
						</View>
						<View style={styles.separator}>
							<View style={styles.line} />
							<View>
								<Text size={14} color={colors.textLight} style={{ paddingHorizontal: 8 }}>
									Login With
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
					</View>
				</TouchableWithoutFeedback>
			</SafeAreaView>
		</KeyboardAvoidingView>
	);
};

const styles = StyleSheet.create({
	container: {
		flex: 1,
		flexDirection: "column",
		justifyContent: "flex-end",
		alignItems: "center",
		backgroundColor: colors.background,
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
		paddingBottom: "10%",
	},
	socialMedia: {
		width: 42,
		aspectRatio: 1,
		resizeMode: "contain",
		marginHorizontal: 4,
		marginTop: 12,
	},
	checkBox: {
		flex: 1,
		padding: 10,
		borderColor: colors.text,
	},
});

export default LoginPage;
