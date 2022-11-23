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

![Rear_クリアシーン](https://user-images.githubusercontent.com/71632844/203529937-8667313c-27f8-4f46-aac6-e8ad74639f2a.gif)


# 担当箇所・工夫した点
- **<ins>演出関係全般</ins>**  
　ステージがすべて洞窟であることや「ステルスアクション」というジャンルであることから、その雰囲気がゲーム最中だけではなくゲームの導入部分から出すことでプレイヤーに没入感を与えるよう工夫しました。  
 　またチーム全体で演出に関して随時相談することで、インゲーム開始時のステージ全体のポイントとなる部分を見せる処理の追加や、ステージクリア時の達成感を与えるような演出など、ゲーム内の「間」をうまく利用した演出にすることができたと感じます。  
  
- **<ins>各分身のデータ管理</ins>**  
　各種分身のデータを一つのクラスで管理することで、インスタンス化処理やクールタイム処理をまとめてデータの参照を他の人からもしやすくなるようにしました。  
 
- **<ins>各分身の行動処理とそれに伴う敵の挙動の追加</ins>**  
　Listで探知した敵もしくは煙で見えなくなっている敵のデータを格納し、倒れたり効果が切れ消えた際にListのデータを解放することで敵の挙動がスムーズになるようにしました。  
　また、ユーザーがプレイしていて直感的に操作できるよう、ケムリスライム選択時に投げる軌道を可視化する処理をプログラミングしました。  
　敵の挙動の追加では敵の処理を主に作っていたもう一人のプログラマーと相談しあいながら処理を追加していくことで、効率よく処理の追加をすることができました。  

- **<ins>サウンド関係全般</ins>**  
　 敵やプレイヤーなどあまり私自身が関与していない部分の効果音は、下手に干渉してバグが発生しないようスクリプトを分けるなどの工夫をして実装することで、音の動機ずれや既存の処理にバグが出るような不具合などを発生させずに実装することができました。  

- **<ins>その他工夫した点</ins>**  
　プランナーが一人であることもあったため、積極的にアイデア出しや仮実装をしてチーム全体で共有するといったことをプログラマー２人で行うようにしていました。その結果プランナーの方はレベルデザインに注力することができ、効率よく制作を行うことができました。  
　随時やっている内容や終わった内容をプログラマー同士だけではなくチーム全体で共有することで、半年という短い期間でブラッシュアップまで持って行けた作品に仕上がりました。  
　プログラムのことだけでなくプランナーのレベルデザインに関する相談に乗ったり、デザイナーと演出についてアイデアや意見を持ち合わせて考えあったりすることでよりゲームらしい作品にし充てることができました。  
  

# 改善点
- **<ins>ネストが多くなってしまっている</ins>**  
　関数化している処理が少ないため、ネストの多いソースになってしまいました。  
　現在制作中のゲームではできる限り関数化するよう気を付けネストの少ないソース作りを心掛けています。
 
- **<ins>コメントが少ない</ins>**  
　コメントの記述が少なかったことで、プログラマー同士お互いのソースを見ただけでは内容を把握しきれてないことが多々ありました。  
　関数名や変数名などの名前をわかりやすくするのは勿論ですが、コメントを残して簡単な説明だけで他の人が理解してもらえるようなソースを現在心掛けています。  
 
- **<ins>フラグを用いた条件文が多くなってしまっている</ins>**  
　ステートマシンを作るなどの状態管理を行ってなかったため、bool型の変数を多用してしまい度の変数がどういった役割をしているのか見分けがつきにくくなってしまいました。  
　現在は列挙型を用いて現在のゲームの状態を取得して条件分岐させることで、ソースをみて一目でわかりやすくなるよう工夫しています。  

- **<ins>管理しているデータが一つにまとまりすぎて見にくくなってしまっている</ins>**  
　似たデータを１つにまとめようとしたのはよかったと思うのですが、クラス一つで全てを管理してしまったため管理しているソースが複雑で読みにくくなってしまいました。  
　現在はクラスの継承やカプセル化などを利用して共通するデータを親クラスでまとめるなどすることでデータをより見やすくなるよう工夫しています。  

- **<ins>ソースファイルごとに処理のまとまりがない</ins>**  
　複数のソースで似たような処理を行ってしまったり、１つのソースで関連性の少ない処理をまとめて書いてしまうなどのことをしてしまった為、ソースファイル１つ１つのまとまりが薄くなってしまいました。  
　ソースファイルはできるだけ処理にまとまりが出るようクラス内の処理作りを工夫したり、パーシャルクラスにすることで複数のファイルに分けてそれぞれのファイルで一貫性を持たせるよう工夫しています。


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
| [PlayerController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/PlayerController.cs) | プレイヤーの処理全般 | 草に隠れているときの演出処理のみ記述 |
| [PlayerSEScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/PlayerSEScript.cs) | プレイヤーの行動に合わせて効果音を鳴らす | 全記述 |
| [SearchArea.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SearchArea.cs) | 敵のプレイヤーとツノスライムの探知処理 | ツノスライムを考慮するよう機能を追加記述 |
| [SmokeArea.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SmokeArea.cs) | ケムリスライムの煙で敵の探知機能を阻害する | ケムリスライムが消えた際、阻害を受けていた敵のフラグを落とす処理を記述（EnemySmokedReset関数） |
| [SmokeAvatarController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SmokeAvatarController.cs) | ケムリスライム（分身）の行動処理 | エフェクトに関する処理以外を記述 |
| [SoundArea.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/SoundArea.cs) | オンプスライムが音を鳴らした際の処理 | 全記述 |
| [StageBGMScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/StageBGMScript.cs) | インゲーム中のBGM処理 | 全記述 |
| [StartAndEndGame.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/StartAndEndGame.cs) | インゲームのスタート時と終了時の処理全般 | ・スタート時のカメラ演出処理を記述 <br> ・ゲームオーバー時の演出処理を記述 <br> ・ゲームクリア時の演出を記述 <br> ※ゲームオーバー、クリア時などの遷移処理はもう1人の方が担当しました。 |
| [TitleBGMScript.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/TitleBGMScript.cs) | タイトル画面中のBGM処理 | 全記述 |
| [TitleController.cs](https://github.com/daichi0907/Rear/blob/main/Rear_MasterVersion_Project/Assets/Scripts/TitleController.cs) | タイトル画面中の主要処理 | ・ステージ選択した際のフェードアウト処理を記述 <br> ・BGM、SEのサウンド関係処理を記述 <br> ・SE処理の都合上ボタンを押してから１秒待ってから遷移する処理を記述 |

※上記に記載のないスクリプトファイルは私自身記述した部分のないスクリプトファイルとなっております。  


# 使用したデバイス・ツール
・Unity 2020.3.18f1   
・VisualStudio2019  
・xboxコントローラー  
