import React from "react";
import {
	Image,
	View,
	KeyboardAvoidingView,
	Platform,
	SafeAreaView,
	TouchableWithoutFeedback,
	Keyboard,
} from "react-native";

import styles from "./styles";
import { Button, Text, InputText } from "../../components";

const NewPasswordPage = () => (
	<KeyboardAvoidingView
		style={styles.flexOne}
		behavior={Platform.OS === "ios" ? "padding" : "height"}
	>
		<SafeAreaView style={styles.flexOne}>
			<TouchableWithoutFeedback onPress={Keyboard.dismiss}>
				<View style={styles.container}>
					<View style={styles.iconWrapper}>
						<Image source={require("../../assets/images/icon.png")} style={styles.icon} />
					</View>
					<View style={styles.formWrapper}>
						<Text weight="bold" size={36} style={styles.title}>
							New Password
						</Text>
						<View style={styles.inputText}>
							<InputText />
						</View>
						<View style={styles.inputText}>
							<InputText />
						</View>
						<Button title="Reset" style={styles.button} />
					</View>
				</View>
			</TouchableWithoutFeedback>
		</SafeAreaView>
	</KeyboardAvoidingView>
);

export default NewPasswordPage;
