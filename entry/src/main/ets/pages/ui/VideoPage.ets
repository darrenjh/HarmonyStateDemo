import router from '@ohos.router'
import hilog from '@ohos.hilog';
/**
 * 视频播放
 */
@Entry
@Component
  /**
   * @Entry表示该自定义组件为入口组件
  * @Component和@State都是装饰器
   * @Component表示自定义组件
  * @State表示组件中的状态变量，状态变量变化会触发UI刷新
   * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-basic-syntax-overview-0000001531611153-V3
   * @State允许修饰的类型：Object、class、string、number、boolean、enum类型
   */
struct VideoPage {
  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()
  private controller: VideoController;
  // private videosrc: string = 'https://cpro.xdmssp.com/v2/1692609656996.mp4' // 使用时请替换为实际视频加载网址
  private previewUris: Resource = $r('app.media.splash_default');
  private innerResource: Resource = $rawfile('videoTest.mp4');

  build() {
    Column() {
      // 标题栏
      Stack({ alignContent: Alignment.Start }) {
        Text(this.params?.['title'])
          .fontColor(Color.White)
          .fontSize(20)
          .height('100%')
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.Grey)
        Stack({ alignContent: Alignment.Center }) {
          Image($r("app.media.icon_back")).width(15).height(20)
        }.height('100%').width(50).onClick(() => {
          router.back()
        })

      }.width('100%').height(50);


      Column() {
        Video({
          src: this.innerResource,
          previewUri: this.previewUris,
          controller: this.controller
        })
          .muted(false) //设置是否静音
          .controls(false) //设置是否显示默认控制条
          .autoPlay(true) //设置是否自动播放
          .loop(true) //设置是否循环播放
          .objectFit(ImageFit.Contain) //设置视频适配模式
          .onUpdate((event) => { //更新事件回调
            console.info("Video update.");
          })
          .onPrepared((event) => { //准备事件回调
            console.info("Video prepared.");
          })
          .onError(() => { //失败事件回调
            console.info("Video error.");
          })
      }

    }

  }

}