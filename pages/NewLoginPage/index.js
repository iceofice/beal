import React, { useState } from "react";
// import { StatusBar } from "expo-status-bar";
import { Image, KeyboardAvoidingView, View, ScrollView } from "react-native";
import { Text, InputText, Button } from "../../components";
import colors from "../../assets/colors/colors";
import Checkbox from "expo-checkbox";
import styles from "./styles";

const LoginPage = () => {
	const [isChecked, setChecked] = useState(false);
	return (
		<>
			<ScrollView contentContainerStyle={{ flexGrow: 1, backgroundColor: colors.background }}>
				<KeyboardAvoidingView style={styles.container}>
					{/* <View> */}
					<Image source={require("../../assets/images/icon.png")} style={styles.icon}></Image>

					<Text size={36} weight="bold" color={colors.text} style={styles.header}>
						Login
					</Text>

					<View style={styles.inputField}>
						<InputText />
					</View>
					<View style={styles.inputField}>
						<InputText />
					</View>

					<View style={styles.extra}>
						<View style={styles.rememberMe}>
							<Checkbox style={styles.checkbox} value={isChecked} onValueChange={setChecked} />
							<Text size={12} weight="bold">
								Remember Me
							</Text>
						</View>
						<Text size={12} weight="bold">
							Forgot Password?
						</Text>
					</View>

					<Button title="Login" style={styles.loginButton} />

					<Text size={12} weight="light">
						{"You're new here? Register now!"}
					</Text>

					{/* </View> */}
				</KeyboardAvoidingView>
			</ScrollView>
			<View style={styles.loginWith}>
				<Text size={12} weight="bold">
					Login With
				</Text>
				<Image source={require("../../assets/images/google-circle.png")} style={styles.iconLogin} />
			</View>
		</>
	);
};

export default LoginPage;
