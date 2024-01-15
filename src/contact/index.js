import React, {useState} from 'react';
import {AppRegistry, StyleSheet, View, ActivityIndicator, Button, Alert, Image, Switch, Text, TextInput, SafeAreaView, ScrollView} from 'react-native';

class UIDemo extends React.Component {

  render() {
    return (

        <ScrollView>
          <View style={[styles.container, styles.vertical]}>
        <ActivityIndicator />
        <ActivityIndicator size="large" />
        <ActivityIndicator color="red" />
        <ActivityIndicator size="large" color="red" />

        <Button
        title="Press me"
        color="red"
        onPress={() => Alert.alert('Simple Button pressed')}/>

      <Image
        style={styles.tinyLogo}
        source={{
          uri: 'https://reactnative.dev/img/tiny_logo.png',
        }}
      />
      <Switch/>
      <Text>Hello, World!</Text>
      <TextInput style={{ height: 40, borderColor: 'gray', borderWidth: 1 }}></TextInput>
      </View>
        </ScrollView>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center"
  },
  vertical: {
    flexDirection: "column",
    justifyContent: "space-around",
    padding: 10
  },
  tinyLogo: {
    width: 50,
    height: 50,
  },
});

// 整体js模块的名称
AppRegistry.registerComponent('UIDemo', () => UIDemo);
