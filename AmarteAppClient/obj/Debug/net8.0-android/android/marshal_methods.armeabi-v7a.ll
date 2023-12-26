; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [331 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [656 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 250
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 284
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 292
	i32 39109920, ; 7: Newtonsoft.Json.dll => 0x254c520 => 206
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 301
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 325
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 205
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 16: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 309
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 268
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 268
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 288
	i32 136584136, ; 22: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 324
	i32 140062828, ; 23: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 317
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 25: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 26: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 27: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 224
	i32 176265551, ; 28: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 29: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 270
	i32 184328833, ; 30: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 222
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 244
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 39: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 176
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 227
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 246
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 243
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 322
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 213
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 49: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 300
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 245
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 327
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 60: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 320
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 228
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 241
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 243
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 256
	i32 489220957, ; 71: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 298
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 73: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 198
	i32 526420162, ; 74: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 75: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 288
	i32 530272170, ; 76: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 77: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 319
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 194
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 281
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 279
	i32 571435654, ; 85: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 191
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 233
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 311
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 239
	i32 643868501, ; 93: System.Net => 0x2660a755 => 81
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 275
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 220
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 99: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 100: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 290
	i32 693804605, ; 101: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 102: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 103: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 285
	i32 700358131, ; 104: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 105: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 289
	i32 722857257, ; 106: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 107: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 108: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 109: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 210
	i32 759454413, ; 110: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 111: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 112: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 113: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 317
	i32 789151979, ; 114: Microsoft.Extensions.Options => 0x2f0980eb => 197
	i32 790371945, ; 115: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 234
	i32 804008546, ; 116: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 180
	i32 804715423, ; 117: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 248
	i32 823281589, ; 119: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 120: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 121: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 122: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 123: Xamarin.AndroidX.Print => 0x3246f6cd => 261
	i32 869139383, ; 124: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 302
	i32 873119928, ; 125: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 126: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 127: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 128: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 316
	i32 904024072, ; 129: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 130: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 131: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 313
	i32 928116545, ; 132: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 284
	i32 952186615, ; 133: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 134: Newtonsoft.Json => 0x38f24a24 => 206
	i32 956575887, ; 135: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 289
	i32 961460050, ; 136: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 306
	i32 966729478, ; 137: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 282
	i32 967690846, ; 138: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 245
	i32 975236339, ; 139: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 140: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 141: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 142: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 143: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 315
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 145: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 146: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 193
	i32 1001831731, ; 147: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 148: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 265
	i32 1019214401, ; 149: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 150: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 188
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 283
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 218
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 154: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 296
	i32 1044663988, ; 155: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 156: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 252
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 286
	i32 1098259244, ; 160: System => 0x41761b2c => 164
	i32 1106973742, ; 161: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 185
	i32 1108272742, ; 162: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 318
	i32 1115016839, ; 163: AmarteLibrary.dll => 0x4275ce87 => 326
	i32 1117529484, ; 164: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 312
	i32 1118262833, ; 165: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 308
	i32 1121599056, ; 166: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 251
	i32 1127624469, ; 167: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 196
	i32 1149092582, ; 168: Xamarin.AndroidX.Window => 0x447dc2e6 => 278
	i32 1168523401, ; 169: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 314
	i32 1170634674, ; 170: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 171: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 189
	i32 1175144683, ; 172: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 274
	i32 1178241025, ; 173: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 259
	i32 1204270330, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 220
	i32 1208641965, ; 175: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 176: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 177: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 279
	i32 1253011324, ; 178: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 179: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 294
	i32 1264511973, ; 180: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 269
	i32 1267360935, ; 181: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 273
	i32 1273260888, ; 182: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 225
	i32 1275534314, ; 183: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 290
	i32 1278448581, ; 184: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 217
	i32 1293217323, ; 185: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 236
	i32 1308624726, ; 186: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 303
	i32 1309188875, ; 187: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 188: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 278
	i32 1324164729, ; 189: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 190: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 191: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 323
	i32 1364015309, ; 192: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 193: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 324
	i32 1376866003, ; 194: Xamarin.AndroidX.SavedState => 0x52114ed3 => 265
	i32 1379779777, ; 195: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 196: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 197: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 229
	i32 1408764838, ; 198: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 199: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 200: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 201: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 292
	i32 1434145427, ; 202: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 203: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 282
	i32 1439761251, ; 204: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 205: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 206: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 207: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 190
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 210: es\Microsoft.Maui.Controls.resources => 0x57152abe => 298
	i32 1461234159, ; 211: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 212: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 213: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 214: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 219
	i32 1470490898, ; 215: Microsoft.Extensions.Primitives => 0x57a5e912 => 198
	i32 1479771757, ; 216: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 217: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 218: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 219: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 266
	i32 1521091094, ; 220: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 193
	i32 1526286932, ; 221: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 322
	i32 1536373174, ; 222: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 223: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 224: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 225: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 180
	i32 1550322496, ; 226: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 227: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 228: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 229: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 230: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 231: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 235
	i32 1592978981, ; 232: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 233: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 283
	i32 1601112923, ; 234: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 235: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 236: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 237: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 255
	i32 1622358360, ; 238: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 239: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 277
	i32 1632842087, ; 240: Microsoft.Extensions.Configuration.Json => 0x61533167 => 186
	i32 1635184631, ; 241: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 239
	i32 1636350590, ; 242: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 232
	i32 1639515021, ; 243: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 244: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 245: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 246: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 179
	i32 1657153582, ; 247: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 248: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 271
	i32 1658251792, ; 249: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 280
	i32 1670060433, ; 250: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 227
	i32 1675553242, ; 251: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 252: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 253: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 254: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 255: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 256: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 257: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 287
	i32 1701541528, ; 258: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1714829551, ; 259: CurrieTechnologies.Razor.SweetAlert2.dll => 0x663638ef => 173
	i32 1720223769, ; 260: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 248
	i32 1726116996, ; 261: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 262: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 263: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 223
	i32 1743415430, ; 264: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 293
	i32 1744735666, ; 265: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 266: System.IO.Pipelines.dll => 0x68139a0d => 208
	i32 1746316138, ; 267: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 268: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 269: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 270: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 178
	i32 1763938596, ; 271: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 272: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 273: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 270
	i32 1770582343, ; 274: Microsoft.Extensions.Logging.dll => 0x6988f147 => 194
	i32 1776026572, ; 275: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 276: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 277: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 278: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 309
	i32 1788241197, ; 279: Xamarin.AndroidX.Fragment => 0x6a96652d => 241
	i32 1793755602, ; 280: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 301
	i32 1808609942, ; 281: Xamarin.AndroidX.Loader => 0x6bcd3296 => 255
	i32 1813058853, ; 282: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 286
	i32 1813201214, ; 283: Xamarin.Google.Android.Material => 0x6c13413e => 280
	i32 1818569960, ; 284: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 260
	i32 1818787751, ; 285: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 286: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 287: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 288: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 195
	i32 1847515442, ; 289: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 210
	i32 1853025655, ; 290: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 318
	i32 1858542181, ; 291: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 292: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 293: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 300
	i32 1879696579, ; 294: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 295: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 221
	i32 1888955245, ; 296: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 297: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 298: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 294
	i32 1898237753, ; 299: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 300: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 301: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 302: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 303: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 305
	i32 1956758971, ; 304: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 305: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 267
	i32 1968388702, ; 306: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1983156543, ; 307: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 287
	i32 1985761444, ; 308: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 212
	i32 2003115576, ; 309: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 297
	i32 2011961780, ; 310: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 311: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 252
	i32 2031763787, ; 312: Xamarin.Android.Glide => 0x791a414b => 209
	i32 2045470958, ; 313: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 314: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 184
	i32 2055257422, ; 315: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 247
	i32 2060060697, ; 316: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 317: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 296
	i32 2070888862, ; 318: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 319: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 192
	i32 2079903147, ; 320: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 321: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 322: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 323: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 324: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 325: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 326: Microsoft.Maui => 0x80bd55ad => 203
	i32 2169148018, ; 327: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 304
	i32 2181898931, ; 328: Microsoft.Extensions.Options.dll => 0x820d22b3 => 197
	i32 2192057212, ; 329: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 195
	i32 2193016926, ; 330: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 331: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 291
	i32 2201231467, ; 332: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 333: it\Microsoft.Maui.Controls.resources => 0x839595db => 306
	i32 2217644978, ; 334: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 274
	i32 2222056684, ; 335: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 336: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 256
	i32 2252106437, ; 337: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 338: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 339: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 340: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 341: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 211
	i32 2279755925, ; 342: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 263
	i32 2293034957, ; 343: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 344: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 345: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 346: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 310
	i32 2305521784, ; 347: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 348: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 215
	i32 2320631194, ; 349: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2328110541, ; 350: AmarteLibrary => 0x8ac425cd => 326
	i32 2340441535, ; 351: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 352: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 353: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 354: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 304
	i32 2368005991, ; 355: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 356: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 357: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 358: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 359: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 305
	i32 2401565422, ; 360: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 361: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 238
	i32 2411328690, ; 362: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 176
	i32 2421380589, ; 363: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 364: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 225
	i32 2427813419, ; 365: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 302
	i32 2435356389, ; 366: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 367: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 368: Microsoft.JSInterop.dll => 0x919672ca => 199
	i32 2454642406, ; 369: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 370: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 371: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 372: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 228
	i32 2471841756, ; 373: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 374: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 375: Microsoft.Maui.Controls => 0x93dba8a1 => 201
	i32 2483903535, ; 376: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 377: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 378: System.AppContext.dll => 0x94798bc5 => 6
	i32 2498806668, ; 379: AmarteAppClient.dll => 0x94f0c38c => 0
	i32 2501346920, ; 380: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 381: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 308
	i32 2505896520, ; 382: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 250
	i32 2522472828, ; 383: Xamarin.Android.Glide.dll => 0x9659e17c => 209
	i32 2537015816, ; 384: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 175
	i32 2538310050, ; 385: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 386: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 303
	i32 2562349572, ; 387: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 388: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 389: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 307
	i32 2581783588, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 251
	i32 2581819634, ; 391: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 273
	i32 2585220780, ; 392: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 393: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 394: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 177
	i32 2589602615, ; 395: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 396: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 189
	i32 2593496499, ; 397: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 312
	i32 2605712449, ; 398: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 291
	i32 2615233544, ; 399: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 242
	i32 2616218305, ; 400: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 196
	i32 2617129537, ; 401: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 402: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 403: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 232
	i32 2624644809, ; 404: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 237
	i32 2626831493, ; 405: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 307
	i32 2627185994, ; 406: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 407: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 408: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 246
	i32 2663391936, ; 409: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 211
	i32 2663698177, ; 410: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 411: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 412: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 413: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2685177414, ; 414: CurrieTechnologies.Razor.SweetAlert2 => 0xa00c8e46 => 173
	i32 2686887180, ; 415: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 416: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 179
	i32 2693849962, ; 417: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 418: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 271
	i32 2715334215, ; 419: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 420: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 421: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 422: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 423: Xamarin.AndroidX.Activity => 0xa2e0939b => 213
	i32 2735172069, ; 424: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 425: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 175
	i32 2737747696, ; 426: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 219
	i32 2740698338, ; 427: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 293
	i32 2740948882, ; 428: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 429: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 430: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 313
	i32 2758225723, ; 431: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 202
	i32 2764765095, ; 432: Microsoft.Maui.dll => 0xa4caf7a7 => 203
	i32 2765824710, ; 433: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 434: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 285
	i32 2778768386, ; 435: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 276
	i32 2779977773, ; 436: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 264
	i32 2785988530, ; 437: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 319
	i32 2788224221, ; 438: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 242
	i32 2801831435, ; 439: Microsoft.Maui.Graphics => 0xa7008e0b => 205
	i32 2803228030, ; 440: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 441: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 229
	i32 2819470561, ; 442: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 443: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 444: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 264
	i32 2824502124, ; 445: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 446: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 181
	i32 2838993487, ; 447: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 253
	i32 2849599387, ; 448: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 449: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 276
	i32 2855708567, ; 450: Xamarin.AndroidX.Transition => 0xaa36a797 => 272
	i32 2861098320, ; 451: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 452: Microsoft.Maui.Essentials => 0xaa8a4878 => 204
	i32 2870099610, ; 453: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 214
	i32 2875164099, ; 454: Jsr305Binding.dll => 0xab5f85c3 => 281
	i32 2875220617, ; 455: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 456: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 240
	i32 2887636118, ; 457: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 458: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 178
	i32 2899753641, ; 459: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 460: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 461: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 462: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 463: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 464: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 192
	i32 2916838712, ; 465: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 277
	i32 2919462931, ; 466: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 467: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 216
	i32 2936416060, ; 468: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 469: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 470: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 471: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 472: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 473: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 474: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 236
	i32 2987532451, ; 475: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 267
	i32 2996846495, ; 476: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 249
	i32 3016983068, ; 477: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 269
	i32 3023353419, ; 478: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 479: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 244
	i32 3038032645, ; 480: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 327
	i32 3053864966, ; 481: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 299
	i32 3056245963, ; 482: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 266
	i32 3057625584, ; 483: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 257
	i32 3059408633, ; 484: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 485: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 486: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 487: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 488: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 489: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 490: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 491: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 492: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 493: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 494: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 495: GoogleGson.dll => 0xbba64c02 => 174
	i32 3159123045, ; 496: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 497: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 498: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 258
	i32 3192346100, ; 499: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 500: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 501: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 502: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 503: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 235
	i32 3220365878, ; 504: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 505: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3249260365, ; 506: RestSharp.dll => 0xc1abc74d => 207
	i32 3251039220, ; 507: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 508: Xamarin.AndroidX.CardView => 0xc235e84d => 223
	i32 3265493905, ; 509: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 510: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 511: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 512: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 513: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 514: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 515: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 516: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 517: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 299
	i32 3316684772, ; 518: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 519: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 233
	i32 3317144872, ; 520: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 521: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 221
	i32 3345895724, ; 522: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 262
	i32 3346324047, ; 523: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 259
	i32 3357674450, ; 524: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 316
	i32 3358260929, ; 525: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 526: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 214
	i32 3362522851, ; 527: Xamarin.AndroidX.Core => 0xc86c06e3 => 230
	i32 3366347497, ; 528: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 529: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 263
	i32 3381016424, ; 530: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 295
	i32 3395150330, ; 531: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 532: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 533: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 234
	i32 3406629867, ; 534: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 190
	i32 3421170118, ; 535: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 184
	i32 3428513518, ; 536: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 187
	i32 3429136800, ; 537: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 538: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 539: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 237
	i32 3445260447, ; 540: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 541: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 200
	i32 3458724246, ; 542: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 314
	i32 3464190856, ; 543: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 177
	i32 3471940407, ; 544: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 545: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 546: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 315
	i32 3485117614, ; 547: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 548: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 549: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 226
	i32 3500000672, ; 550: Microsoft.JSInterop => 0xd09dc5a0 => 199
	i32 3509114376, ; 551: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 552: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 553: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 554: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 555: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 556: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 557: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 323
	i32 3592228221, ; 558: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 325
	i32 3597029428, ; 559: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 212
	i32 3598340787, ; 560: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 561: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 562: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 563: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 261
	i32 3633644679, ; 564: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 216
	i32 3638274909, ; 565: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 566: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 247
	i32 3643446276, ; 567: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 320
	i32 3643854240, ; 568: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 258
	i32 3645089577, ; 569: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 570: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 571: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 572: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 573: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 222
	i32 3684561358, ; 574: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 226
	i32 3700866549, ; 575: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 576: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 231
	i32 3716563718, ; 577: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 578: Xamarin.AndroidX.Annotation => 0xdda814c6 => 215
	i32 3722202641, ; 579: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 186
	i32 3724971120, ; 580: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 257
	i32 3732100267, ; 581: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 582: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 181
	i32 3737834244, ; 583: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 584: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 585: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 586: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 295
	i32 3758424670, ; 587: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 185
	i32 3786282454, ; 588: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 224
	i32 3792276235, ; 589: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 590: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 200
	i32 3802395368, ; 591: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3812941353, ; 592: AmarteAppClient => 0xe344de29 => 0
	i32 3816437471, ; 593: RestSharp => 0xe37a36df => 207
	i32 3819260425, ; 594: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 595: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 596: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 597: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 188
	i32 3844307129, ; 598: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 599: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 600: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 601: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 602: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 603: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 604: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 272
	i32 3888767677, ; 605: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 262
	i32 3896106733, ; 606: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 607: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 230
	i32 3901907137, ; 608: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 609: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 311
	i32 3920810846, ; 610: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 611: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 275
	i32 3928044579, ; 612: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 613: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 614: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 260
	i32 3945713374, ; 615: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 616: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 617: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 218
	i32 3959773229, ; 618: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 249
	i32 4003436829, ; 619: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 620: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 217
	i32 4023392905, ; 621: System.IO.Pipelines => 0xefd01a89 => 208
	i32 4025784931, ; 622: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 623: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 202
	i32 4054681211, ; 624: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 625: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 626: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 627: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 297
	i32 4094352644, ; 628: Microsoft.Maui.Essentials.dll => 0xf40add04 => 204
	i32 4099507663, ; 629: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 630: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 631: Xamarin.AndroidX.Emoji2 => 0xf479582c => 238
	i32 4103439459, ; 632: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 321
	i32 4126470640, ; 633: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 187
	i32 4127667938, ; 634: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 635: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 636: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 637: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 321
	i32 4151237749, ; 638: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 639: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 640: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 641: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 642: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 643: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 254
	i32 4185676441, ; 644: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 645: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 646: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 647: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 310
	i32 4256097574, ; 648: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 231
	i32 4258378803, ; 649: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 253
	i32 4260525087, ; 650: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 651: Microsoft.Maui.Controls.dll => 0xfea12dee => 201
	i32 4274976490, ; 652: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 653: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 254
	i32 4294648842, ; 654: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 191
	i32 4294763496 ; 655: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 240
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [656 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 250, ; 3
	i32 284, ; 4
	i32 48, ; 5
	i32 292, ; 6
	i32 206, ; 7
	i32 80, ; 8
	i32 301, ; 9
	i32 145, ; 10
	i32 30, ; 11
	i32 325, ; 12
	i32 124, ; 13
	i32 205, ; 14
	i32 102, ; 15
	i32 309, ; 16
	i32 268, ; 17
	i32 107, ; 18
	i32 268, ; 19
	i32 139, ; 20
	i32 288, ; 21
	i32 324, ; 22
	i32 317, ; 23
	i32 77, ; 24
	i32 124, ; 25
	i32 13, ; 26
	i32 224, ; 27
	i32 132, ; 28
	i32 270, ; 29
	i32 151, ; 30
	i32 18, ; 31
	i32 222, ; 32
	i32 26, ; 33
	i32 244, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 176, ; 39
	i32 227, ; 40
	i32 147, ; 41
	i32 246, ; 42
	i32 243, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 322, ; 46
	i32 213, ; 47
	i32 83, ; 48
	i32 300, ; 49
	i32 245, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 327, ; 58
	i32 165, ; 59
	i32 320, ; 60
	i32 228, ; 61
	i32 12, ; 62
	i32 241, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 243, ; 69
	i32 256, ; 70
	i32 298, ; 71
	i32 84, ; 72
	i32 198, ; 73
	i32 150, ; 74
	i32 288, ; 75
	i32 60, ; 76
	i32 319, ; 77
	i32 194, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 40, ; 82
	i32 281, ; 83
	i32 279, ; 84
	i32 191, ; 85
	i32 120, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 233, ; 90
	i32 311, ; 91
	i32 239, ; 92
	i32 81, ; 93
	i32 136, ; 94
	i32 275, ; 95
	i32 220, ; 96
	i32 8, ; 97
	i32 73, ; 98
	i32 155, ; 99
	i32 290, ; 100
	i32 154, ; 101
	i32 92, ; 102
	i32 285, ; 103
	i32 45, ; 104
	i32 289, ; 105
	i32 109, ; 106
	i32 129, ; 107
	i32 25, ; 108
	i32 210, ; 109
	i32 72, ; 110
	i32 55, ; 111
	i32 46, ; 112
	i32 317, ; 113
	i32 197, ; 114
	i32 234, ; 115
	i32 180, ; 116
	i32 22, ; 117
	i32 248, ; 118
	i32 86, ; 119
	i32 43, ; 120
	i32 160, ; 121
	i32 71, ; 122
	i32 261, ; 123
	i32 302, ; 124
	i32 3, ; 125
	i32 42, ; 126
	i32 63, ; 127
	i32 316, ; 128
	i32 16, ; 129
	i32 53, ; 130
	i32 313, ; 131
	i32 284, ; 132
	i32 105, ; 133
	i32 206, ; 134
	i32 289, ; 135
	i32 306, ; 136
	i32 282, ; 137
	i32 245, ; 138
	i32 34, ; 139
	i32 158, ; 140
	i32 85, ; 141
	i32 32, ; 142
	i32 315, ; 143
	i32 12, ; 144
	i32 51, ; 145
	i32 193, ; 146
	i32 56, ; 147
	i32 265, ; 148
	i32 36, ; 149
	i32 188, ; 150
	i32 283, ; 151
	i32 218, ; 152
	i32 35, ; 153
	i32 296, ; 154
	i32 58, ; 155
	i32 252, ; 156
	i32 174, ; 157
	i32 17, ; 158
	i32 286, ; 159
	i32 164, ; 160
	i32 185, ; 161
	i32 318, ; 162
	i32 326, ; 163
	i32 312, ; 164
	i32 308, ; 165
	i32 251, ; 166
	i32 196, ; 167
	i32 278, ; 168
	i32 314, ; 169
	i32 153, ; 170
	i32 189, ; 171
	i32 274, ; 172
	i32 259, ; 173
	i32 220, ; 174
	i32 29, ; 175
	i32 52, ; 176
	i32 279, ; 177
	i32 5, ; 178
	i32 294, ; 179
	i32 269, ; 180
	i32 273, ; 181
	i32 225, ; 182
	i32 290, ; 183
	i32 217, ; 184
	i32 236, ; 185
	i32 303, ; 186
	i32 85, ; 187
	i32 278, ; 188
	i32 61, ; 189
	i32 112, ; 190
	i32 323, ; 191
	i32 57, ; 192
	i32 324, ; 193
	i32 265, ; 194
	i32 99, ; 195
	i32 19, ; 196
	i32 229, ; 197
	i32 111, ; 198
	i32 101, ; 199
	i32 102, ; 200
	i32 292, ; 201
	i32 104, ; 202
	i32 282, ; 203
	i32 71, ; 204
	i32 38, ; 205
	i32 32, ; 206
	i32 190, ; 207
	i32 103, ; 208
	i32 73, ; 209
	i32 298, ; 210
	i32 9, ; 211
	i32 123, ; 212
	i32 46, ; 213
	i32 219, ; 214
	i32 198, ; 215
	i32 9, ; 216
	i32 43, ; 217
	i32 4, ; 218
	i32 266, ; 219
	i32 193, ; 220
	i32 322, ; 221
	i32 31, ; 222
	i32 138, ; 223
	i32 92, ; 224
	i32 180, ; 225
	i32 93, ; 226
	i32 49, ; 227
	i32 141, ; 228
	i32 112, ; 229
	i32 140, ; 230
	i32 235, ; 231
	i32 115, ; 232
	i32 283, ; 233
	i32 157, ; 234
	i32 76, ; 235
	i32 79, ; 236
	i32 255, ; 237
	i32 37, ; 238
	i32 277, ; 239
	i32 186, ; 240
	i32 239, ; 241
	i32 232, ; 242
	i32 64, ; 243
	i32 138, ; 244
	i32 15, ; 245
	i32 179, ; 246
	i32 116, ; 247
	i32 271, ; 248
	i32 280, ; 249
	i32 227, ; 250
	i32 48, ; 251
	i32 70, ; 252
	i32 80, ; 253
	i32 126, ; 254
	i32 94, ; 255
	i32 121, ; 256
	i32 287, ; 257
	i32 26, ; 258
	i32 173, ; 259
	i32 248, ; 260
	i32 97, ; 261
	i32 28, ; 262
	i32 223, ; 263
	i32 293, ; 264
	i32 149, ; 265
	i32 208, ; 266
	i32 169, ; 267
	i32 4, ; 268
	i32 98, ; 269
	i32 178, ; 270
	i32 33, ; 271
	i32 93, ; 272
	i32 270, ; 273
	i32 194, ; 274
	i32 21, ; 275
	i32 41, ; 276
	i32 170, ; 277
	i32 309, ; 278
	i32 241, ; 279
	i32 301, ; 280
	i32 255, ; 281
	i32 286, ; 282
	i32 280, ; 283
	i32 260, ; 284
	i32 2, ; 285
	i32 134, ; 286
	i32 111, ; 287
	i32 195, ; 288
	i32 210, ; 289
	i32 318, ; 290
	i32 58, ; 291
	i32 95, ; 292
	i32 300, ; 293
	i32 39, ; 294
	i32 221, ; 295
	i32 25, ; 296
	i32 94, ; 297
	i32 294, ; 298
	i32 89, ; 299
	i32 99, ; 300
	i32 10, ; 301
	i32 87, ; 302
	i32 305, ; 303
	i32 100, ; 304
	i32 267, ; 305
	i32 182, ; 306
	i32 287, ; 307
	i32 212, ; 308
	i32 297, ; 309
	i32 7, ; 310
	i32 252, ; 311
	i32 209, ; 312
	i32 88, ; 313
	i32 184, ; 314
	i32 247, ; 315
	i32 154, ; 316
	i32 296, ; 317
	i32 33, ; 318
	i32 192, ; 319
	i32 116, ; 320
	i32 82, ; 321
	i32 20, ; 322
	i32 11, ; 323
	i32 162, ; 324
	i32 3, ; 325
	i32 203, ; 326
	i32 304, ; 327
	i32 197, ; 328
	i32 195, ; 329
	i32 84, ; 330
	i32 291, ; 331
	i32 64, ; 332
	i32 306, ; 333
	i32 274, ; 334
	i32 143, ; 335
	i32 256, ; 336
	i32 157, ; 337
	i32 41, ; 338
	i32 117, ; 339
	i32 183, ; 340
	i32 211, ; 341
	i32 263, ; 342
	i32 131, ; 343
	i32 75, ; 344
	i32 66, ; 345
	i32 310, ; 346
	i32 172, ; 347
	i32 215, ; 348
	i32 143, ; 349
	i32 326, ; 350
	i32 106, ; 351
	i32 151, ; 352
	i32 70, ; 353
	i32 304, ; 354
	i32 156, ; 355
	i32 182, ; 356
	i32 121, ; 357
	i32 127, ; 358
	i32 305, ; 359
	i32 152, ; 360
	i32 238, ; 361
	i32 176, ; 362
	i32 141, ; 363
	i32 225, ; 364
	i32 302, ; 365
	i32 20, ; 366
	i32 14, ; 367
	i32 199, ; 368
	i32 135, ; 369
	i32 75, ; 370
	i32 59, ; 371
	i32 228, ; 372
	i32 167, ; 373
	i32 168, ; 374
	i32 201, ; 375
	i32 15, ; 376
	i32 74, ; 377
	i32 6, ; 378
	i32 0, ; 379
	i32 23, ; 380
	i32 308, ; 381
	i32 250, ; 382
	i32 209, ; 383
	i32 175, ; 384
	i32 91, ; 385
	i32 303, ; 386
	i32 1, ; 387
	i32 136, ; 388
	i32 307, ; 389
	i32 251, ; 390
	i32 273, ; 391
	i32 134, ; 392
	i32 69, ; 393
	i32 177, ; 394
	i32 146, ; 395
	i32 189, ; 396
	i32 312, ; 397
	i32 291, ; 398
	i32 242, ; 399
	i32 196, ; 400
	i32 88, ; 401
	i32 96, ; 402
	i32 232, ; 403
	i32 237, ; 404
	i32 307, ; 405
	i32 31, ; 406
	i32 45, ; 407
	i32 246, ; 408
	i32 211, ; 409
	i32 109, ; 410
	i32 158, ; 411
	i32 35, ; 412
	i32 22, ; 413
	i32 173, ; 414
	i32 114, ; 415
	i32 179, ; 416
	i32 57, ; 417
	i32 271, ; 418
	i32 144, ; 419
	i32 118, ; 420
	i32 120, ; 421
	i32 110, ; 422
	i32 213, ; 423
	i32 139, ; 424
	i32 175, ; 425
	i32 219, ; 426
	i32 293, ; 427
	i32 54, ; 428
	i32 105, ; 429
	i32 313, ; 430
	i32 202, ; 431
	i32 203, ; 432
	i32 133, ; 433
	i32 285, ; 434
	i32 276, ; 435
	i32 264, ; 436
	i32 319, ; 437
	i32 242, ; 438
	i32 205, ; 439
	i32 159, ; 440
	i32 229, ; 441
	i32 163, ; 442
	i32 132, ; 443
	i32 264, ; 444
	i32 161, ; 445
	i32 181, ; 446
	i32 253, ; 447
	i32 140, ; 448
	i32 276, ; 449
	i32 272, ; 450
	i32 169, ; 451
	i32 204, ; 452
	i32 214, ; 453
	i32 281, ; 454
	i32 40, ; 455
	i32 240, ; 456
	i32 81, ; 457
	i32 178, ; 458
	i32 56, ; 459
	i32 37, ; 460
	i32 97, ; 461
	i32 166, ; 462
	i32 172, ; 463
	i32 192, ; 464
	i32 277, ; 465
	i32 82, ; 466
	i32 216, ; 467
	i32 98, ; 468
	i32 30, ; 469
	i32 159, ; 470
	i32 18, ; 471
	i32 127, ; 472
	i32 119, ; 473
	i32 236, ; 474
	i32 267, ; 475
	i32 249, ; 476
	i32 269, ; 477
	i32 165, ; 478
	i32 244, ; 479
	i32 327, ; 480
	i32 299, ; 481
	i32 266, ; 482
	i32 257, ; 483
	i32 170, ; 484
	i32 16, ; 485
	i32 144, ; 486
	i32 125, ; 487
	i32 118, ; 488
	i32 38, ; 489
	i32 115, ; 490
	i32 47, ; 491
	i32 142, ; 492
	i32 117, ; 493
	i32 34, ; 494
	i32 174, ; 495
	i32 95, ; 496
	i32 53, ; 497
	i32 258, ; 498
	i32 129, ; 499
	i32 153, ; 500
	i32 24, ; 501
	i32 161, ; 502
	i32 235, ; 503
	i32 148, ; 504
	i32 104, ; 505
	i32 207, ; 506
	i32 89, ; 507
	i32 223, ; 508
	i32 60, ; 509
	i32 142, ; 510
	i32 100, ; 511
	i32 5, ; 512
	i32 13, ; 513
	i32 122, ; 514
	i32 135, ; 515
	i32 28, ; 516
	i32 299, ; 517
	i32 72, ; 518
	i32 233, ; 519
	i32 24, ; 520
	i32 221, ; 521
	i32 262, ; 522
	i32 259, ; 523
	i32 316, ; 524
	i32 137, ; 525
	i32 214, ; 526
	i32 230, ; 527
	i32 168, ; 528
	i32 263, ; 529
	i32 295, ; 530
	i32 101, ; 531
	i32 123, ; 532
	i32 234, ; 533
	i32 190, ; 534
	i32 184, ; 535
	i32 187, ; 536
	i32 163, ; 537
	i32 167, ; 538
	i32 237, ; 539
	i32 39, ; 540
	i32 200, ; 541
	i32 314, ; 542
	i32 177, ; 543
	i32 17, ; 544
	i32 171, ; 545
	i32 315, ; 546
	i32 137, ; 547
	i32 150, ; 548
	i32 226, ; 549
	i32 199, ; 550
	i32 155, ; 551
	i32 130, ; 552
	i32 19, ; 553
	i32 65, ; 554
	i32 147, ; 555
	i32 47, ; 556
	i32 323, ; 557
	i32 325, ; 558
	i32 212, ; 559
	i32 79, ; 560
	i32 61, ; 561
	i32 106, ; 562
	i32 261, ; 563
	i32 216, ; 564
	i32 49, ; 565
	i32 247, ; 566
	i32 320, ; 567
	i32 258, ; 568
	i32 14, ; 569
	i32 183, ; 570
	i32 68, ; 571
	i32 171, ; 572
	i32 222, ; 573
	i32 226, ; 574
	i32 78, ; 575
	i32 231, ; 576
	i32 108, ; 577
	i32 215, ; 578
	i32 186, ; 579
	i32 257, ; 580
	i32 67, ; 581
	i32 181, ; 582
	i32 63, ; 583
	i32 27, ; 584
	i32 160, ; 585
	i32 295, ; 586
	i32 185, ; 587
	i32 224, ; 588
	i32 10, ; 589
	i32 200, ; 590
	i32 11, ; 591
	i32 0, ; 592
	i32 207, ; 593
	i32 78, ; 594
	i32 126, ; 595
	i32 83, ; 596
	i32 188, ; 597
	i32 66, ; 598
	i32 107, ; 599
	i32 65, ; 600
	i32 128, ; 601
	i32 122, ; 602
	i32 77, ; 603
	i32 272, ; 604
	i32 262, ; 605
	i32 8, ; 606
	i32 230, ; 607
	i32 2, ; 608
	i32 311, ; 609
	i32 44, ; 610
	i32 275, ; 611
	i32 156, ; 612
	i32 128, ; 613
	i32 260, ; 614
	i32 23, ; 615
	i32 133, ; 616
	i32 218, ; 617
	i32 249, ; 618
	i32 29, ; 619
	i32 217, ; 620
	i32 208, ; 621
	i32 62, ; 622
	i32 202, ; 623
	i32 90, ; 624
	i32 87, ; 625
	i32 148, ; 626
	i32 297, ; 627
	i32 204, ; 628
	i32 36, ; 629
	i32 86, ; 630
	i32 238, ; 631
	i32 321, ; 632
	i32 187, ; 633
	i32 50, ; 634
	i32 6, ; 635
	i32 90, ; 636
	i32 321, ; 637
	i32 21, ; 638
	i32 162, ; 639
	i32 96, ; 640
	i32 50, ; 641
	i32 113, ; 642
	i32 254, ; 643
	i32 130, ; 644
	i32 76, ; 645
	i32 27, ; 646
	i32 310, ; 647
	i32 231, ; 648
	i32 253, ; 649
	i32 7, ; 650
	i32 201, ; 651
	i32 110, ; 652
	i32 254, ; 653
	i32 191, ; 654
	i32 240 ; 655
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
