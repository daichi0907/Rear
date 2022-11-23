# Rear
2年次の後期にチームで制作を行ったゲーム。  
  
〇メンバー  
・プランナー　：１名  
・デザイナー　：２名  
・プログラマー：２名  
  
計５名  

![タイトル画面](https://user-images.githubusercontent.com/71632844/203286021-f3ed0e09-6415-45bf-bc93-7003ca36b3df.png)

# どんなゲームか
プレイヤーはスライムとなり、兵士である敵から隠れながら背後を取って攻撃をすることで倒す「ステルスアクションゲーム」です。  
ステージ内にいる敵を全員倒すことでゲームクリア、敵から１度でも攻撃されてしまうとゲームオーバーとなります。  
スライムは「分身」を使うことで、敵をおびき寄せたり隠れたりすることが出来ます。  
敵の背後をどう取るか考えながら攻略するゲームとなっており、  
見つかるかもしれないという緊張感と作戦を考え成功したときの達成感を味わえるようなゲームとなっております。  


# 担当箇所・工夫した点


# 改善点


# ソースファイル
| ソースファイル | 軽い説明 | 記述・担当部分 |
| --- | --- | --- |
| [AvatarData.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/AvatarData.cs) | 各分身のインスタンス化処理とデータを管理をしている。 | DestroyScokeOrbit関数以外記述 |
| [ButtonSEScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/ButtonSEScript.cs) | ボタンUIを押した際や選択した際の効果音処理 | 全記述 |
| [CntrolScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/CntrolScript.cs) | タイトル画面内のあそびかた閲覧中の処理 | 全記述 |
| [EnemyController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/EnemyController.cs) | 敵の処理全般。 <br> プレイヤーの探知から分身による行動の差分まで行われている。 | ・分身の探知機能を記述（分身のスキルそれぞれに合った挙動になるよう調整） <br> ・特定の分身(オンプスライム)を攻撃した際のスタン処理を記述 <br> ・ゲーム後半の敵の強化機能を記述  |
| [EnemySEScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/EnemySEScript.cs) | 敵の行動に合わせて効果音を鳴らす | 全記述 |
| [GameResult.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/GameResult.cs) | ゲームリザルト画面での演出処理と操作処理 | 全記述 |
| [GameSceneOther.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/GameSceneOther.cs) | どのステージを行ったかを保管し、必要に応じて呼び出すクラス | 全記述 |
| [HornAvatarController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/HornAvatarController.cs) | ツノスライム（分身）の行動処理 | ・敵に追跡されたときの機能とそれに伴う倒れた時の追跡解除機能の記述 <br> ・アニメーション機能の記述 <br> ・壁に衝突した際のストップ処理 |
| [NoteAvatarController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/NoteAvatarController.cs) | オンプスライム（分身）の行動処理 | 全記述 |
| [PauseScripts.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/PauseScripts.cs) | ポーズ中の処理全般 | 全記述 |
| [PlayerSEScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/PlayerSEScript.cs) | プレイヤーの行動に合わせて効果音を鳴らす | 全記述 |
| [SearchArea.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SearchArea.cs) | 敵のプレイヤーとツノスライムの探知処理 | ツノスライムを考慮するよう機能を追加記述 |
| [SmokeArea.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SmokeArea.cs) | ケムリスライムの煙で敵の探知機能を阻害する | ケムリスライムが消えた際、阻害を受けていた敵のフラグを落とす処理を記述（EnemySmokedReset関数） |
| [SmokeAvatarController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SmokeAvatarController.cs) | ケムリスライム（分身）の行動処理 | エフェクトに関する処理以外を記述 |
| [SoundArea.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SoundArea.cs) | オンプスライムが音を鳴らした際の処理 | 全記述 |
| [StageBGMScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/StageBGMScript.cs) | インゲーム中のBGM処理 | 全記述 |
| [StartAndEndGame.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/StartAndEndGame.cs) | インゲームのスタート時と終了時の処理全般 | ・スタート時のカメラ演出処理を記述 <br> ・ゲームオーバー時の演出処理を記述 <br> ・ゲームクリア時の演出を記述 <br> ※ゲームオーバー、クリア時などの遷移処理はもう1人の方が担当しました。 |
| [TitleBGMScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/TitleBGMScript.cs) | タイトル画面中のBGM処理 | 全記述 |
| [TitleController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/TitleController.cs) | タイトル画面中の主要処理 | ・ステージ選択した際のフェードアウト処理を記述 <br> ・BGM、SEのサウンド関係処理を記述 <br> ・SE処理の都合上ボタンを押してから１秒待ってから遷移する処理を記述 |


# 使用したデバイス・ツール
・Unity 2020.3.18f1   
・VisualStudio2019  
・xboxコントローラー  

<!-- 
ブラウザ上で改行する様子を見せたい場合は、行末に半角スペース2個を入れる。
| [.cs]() |  |
| [ソースファイル名](プロジェクトに保存されているファイル名) | 説明文 |
上の文を4行目以降にコピペしてもらって内容書き換えれば表になります
↓例
| [PrincessBehaviour.cs](https://github.com/shuhei-M/Zemi03_Project/blob/main/VR_ShugoWars/Assets/Scripts/Behaviour/PrincessBehaviour.cs) | 姫の挙動を管理する。 |
-->
