








## Ошибки  

1. 
get manifestOutputDirectory error: Could not get unknown property 'manifestOutputDirectory' for task ':app:processDebugManifest' of type   com.android.build.gradle.tasks.ProcessMultiApkApplicationManifest.  
--E- get manifestOutputDirectory error  

2. ошибка возникающая когда не тот или старый json для huawei 
 Huawei Auth Service  
Exception has occurred.
PlatformException (PlatformException(1, HTTP HasRequest: true com.huawei.agconnect.exception.AGCServerException:  code: 203890688 message: client id or secret error, {exceptionCode: 0}, null))

nhandled Exception: AGCAuthException code: AuthExceptionCode.nullToken, message: HTTP HasRequest: true com.huawei.agconnect.exception.AGCServerException:  code: 203890688 message: client id or secret error.

3. Ошибка возникающая когдапри выборе и включении сервиса не выбрано место хранения данных
Exception has occurred.
PlatformException (PlatformException(error, url is null, null, java.security.InvalidParameterException: url is null
	at com.huawei.agconnect.credential.obs.o.a(Unknown Source:41)
	at com.huawei.agconnect.common.api.Backend.call(Unknown Source:17)
	at com.huawei.agconnect.credential.obs.p.a(Unknown Source:301)
	at com.huawei.agconnect.common.api.BackendService.sendRequest(Unknown Source:0)
	at com.huawei.agconnect.auth.internal.server.AuthBackend.sendRequest(Unknown Source:20)
	at com.huawei.agconnect.auth.internal.server.AuthBackend.post(Unknown Source:1)
	at com.huawei.agconnect.auth.internal.e.a(Unknown Source:9)
	at com.huawei.agconnect.auth.internal.e.a(Unknown Source:5)
	at com.huawei.agconnect.auth.EmailAuthProvider.requestVerifyCode(Unknown Source:9)
	at com.huawei.agconnectauth.viewmodel.AGConnectAuthViewModel.handleRequestEmailVerifyCode(AGConnectAuthViewModel.java:374)
	at com.huawei.agconnectauth.AGConnectAuthModule.handleRequestEmailVerifyCode(AGConnectAuthModule.java:52)
	at com.huawei.agconnectauth.handlers.AGConnectAuthMethodCallHandler.onMethodCall(AGConnectAuthMethodCallHandler.java:76)
	at io.flutter.plugin.common.MethodChannel$IncomingMethodCallHandler.onMessage(MethodChannel.java:258)
	at io.flutter.embedding.engine.dart.DartMessenger.invokeHandler(DartMessenger.java:295)
	at io.flutter.embedding.engine.dart.DartMessenger.lambda$dispatchMessageToQueue$0$io-flutter-embedding-engine-dart-DartMessenger(DartMessenger.java:322)
	at io.flutter.embedding.engine.dart.DartMessenger$$ExternalSyntheticLambda0.run(Unknown Source:12)
	at android.os.Handler.handleCallback(Handler.java:873)
	at android.os.Handler.dispatchMessage(Handler.java:99)
	at android.os.Looper.loop(Looper.java:193)
	at android.app.ActivityThread.main(ActivityThread.java:6865)
	at java.lang.reflect.Method.invoke(Native Method)
	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:504)
	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)


I/[AGC_LOG]BackendServiceImpl(20385): sendRequest2
I/[AGC_LOG]BackendServiceImpl(20385): clientToken:true
I/[AGC_LOG]BackendServiceImpl(20385): accessToken:false
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): Failed to handle method call
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): java.security.InvalidParameterException: url is null
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.credential.obs.o.a(Unknown Source:41)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.common.api.Backend.call(Unknown Source:17)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.credential.obs.p.a(Unknown Source:301)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.common.api.BackendService.sendRequest(Unknown Source:0)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.auth.internal.server.AuthBackend.sendRequest(Unknown Source:20)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.auth.internal.server.AuthBackend.post(Unknown Source:1)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.auth.internal.e.a(Unknown Source:9)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.auth.internal.e.a(Unknown Source:5)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnect.auth.EmailAuthProvider.requestVerifyCode(Unknown Source:9)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnectauth.viewmodel.AGConnectAuthViewModel.handleRequestEmailVerifyCode(AGConnectAuthViewModel.java:374)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnectauth.AGConnectAuthModule.handleRequestEmailVerifyCode(AGConnectAuthModule.java:52)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.huawei.agconnectauth.handlers.AGConnectAuthMethodCallHandler.onMethodCall(AGConnectAuthMethodCallHandler.java:76)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at io.flutter.plugin.common.MethodChannel$IncomingMethodCallHandler.onMessage(MethodChannel.java:258)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at io.flutter.embedding.engine.dart.DartMessenger.invokeHandler(DartMessenger.java:295)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at io.flutter.embedding.engine.dart.DartMessenger.lambda$dispatchMessageToQueue$0$io-flutter-embedding-engine-dart-DartMessenger(DartMessenger.java:322)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at io.flutter.embedding.engine.dart.DartMessenger$$ExternalSyntheticLambda0.run(Unknown Source:12)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at android.os.Handler.handleCallback(Handler.java:873)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at android.os.Handler.dispatchMessage(Handler.java:99)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at android.os.Looper.loop(Looper.java:193)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at android.app.ActivityThread.main(ActivityThread.java:6865)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at java.lang.reflect.Method.invoke(Native Method)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:504)
E/MethodChannel#com.huawei.flutter/agconnect_auth(20385): 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:858)
I/[AGC_LOG]AGCHost(20385): getCachedHostAsync#start
I/[AGC_LOG]BackendServiceImpl(20385): sendRequest2
E/AndroidRuntime(20385): FATAL EXCEPTION: subThread
E/AndroidRuntime(20385): Process: com.example.skripts, PID: 20385
E/AndroidRuntime(20385): java.security.InvalidParameterException: url is null
E/AndroidRuntime(20385): 	at com.huawei.agconnect.credential.obs.o.a(Unknown Source:41)
E/AndroidRuntime(20385): 	at com.huawei.agconnect.common.api.Backend.call(Unknown Source:17)
E/AndroidRuntime(20385): 	at com.huawei.agconnect.credential.obs.p.a(Unknown Source:103)
E/AndroidRuntime(20385): 	at com.huawei.agconnect.common.api.BackendService.sendRequest(Unknown Source:0)
E/AndroidRuntime(20385): 	at com.huawei.agconnect.credential.obs.l$1.run(Unknown Source:46)
E/AndroidRuntime(20385): 	at android.os.Handler.handleCallback(Handler.java:873)
E/AndroidRuntime(20385): 	at android.os.Handler.dispatchMessage(Handler.java:99)
E/AndroidRuntime(20385): 	at android.os.Looper.loop(Looper.java:193)
E/AndroidRuntime(20385): 	at android.os.HandlerThread.run(HandlerThread.java:65)
D/HprofFactory(20385): Create HprofDebugEx
I/Process (20385): Sending signal. PID: 20385 SIG: 9
Lost connection to device.
Exited (sigterm)


