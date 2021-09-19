import React from "react";
import {
	View,
	Image,
	Keyboard,
	Platform,
	SafeAreaView,
	KeyboardAvoidingView,
	TouchableWithoutFeedback,
} from "react-native";

import styles from "./styles";
import colors from "../../assets/colors/colors";
import { Button, Text, InputText } from "../../components";

const RegisterPage = () => (
	<KeyboardAvoidingView
		style={styles.flexOne}
		behavior={Platform.OS === "ios" ? "padding" : "height"}
	>
		<TouchableWithoutFeedback onPress={() => Keyboard.dismiss()}>
			<SafeAreaView style={styles.container}>
				<View style={styles.iconWrapper}>
					<Image source={require("../../assets/images/icon.png")} style={styles.icon} />
				</View>

				<View style={styles.title}>
					<Text weight="bold" size={36}>
						Register
					</Text>
				</View>

				<View style={styles.formWrapper}>
					<View style={styles.inputFormWrapper}>
						<View style={styles.inputText}>
							<InputText />
						</View>
						<View style={styles.inputText}>
							<InputText />
						</View>
						<View style={styles.inputText}>
							<InputText />
						</View>
					</View>

					<View style={styles.buttonWrapper}>
						<Button title="Register" style={styles.button} onPress={() => alert("Login")} />

						<TouchableWithoutFeedback onPress={() => alert("Login")}>
							<View style={styles.loginTextWrapper}>
								<Text weight="light" size={14} color={colors.textLight}>
									Already have an account?
								</Text>
								<Text weight="bold" size={14} color={colors.text} style={styles.loginText}>
									Login
								</Text>
								<Text weight="light" size={14} color={colors.textLight}>
									here!
								</Text>
							</View>
						</TouchableWithoutFeedback>
					</View>
				</View>

				<View style={styles.bottomWrapper}>
					<View style={styles.separator}>
						<View style={styles.separatorLine} />
						<View>
							<Text size={14} color={colors.textLight} style={styles.separatorText}>
								Register With
							</Text>
						</View>
						<View style={styles.separatorLine} />
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
			</SafeAreaView>
		</TouchableWithoutFeedback>
	</KeyboardAvoidingView>
);

export default RegisterPage;
