import router from '@ohos.router'
import hilog from '@ohos.hilog';
import webview from '@ohos.web.webview';
import FaultLogger from '@ohos.faultLogger';
import { ToolType } from '@ohos.multimodalInput.touchEvent';
// import web_webview from '@ohos.web.webview';

@Entry
@Component
  /**
   * web
   * @Entry表示该自定义组件为入口组件
  * @Component和@State都是装饰器
   * @Component表示自定义组件
  * @State表示组件中的状态变量，状态变量变化会触发UI刷新
   * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-basic-syntax-overview-0000001531611153-V3
   * @State允许修饰的类型：Object、class、string、number、boolean、enum类型
   */
struct WebPage {
  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()
  @State netUrl: string = "m.baidu.com"
  @State localUrl: Resource = $rawfile('local.html')
  @State titleLocal: string = "点击加载本地网页"
  @State titleNet: string = "点击加载线上网页"
  @State btnTitle: string = "点击加载本地网页"

  webviewController: webview.WebviewController = new webview.WebviewController();

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
      Toggle({
        type: ToggleType.Button, isOn: false
      }) {
        Text(this.btnTitle)
          .fontColor(Color.White)
          .fontSize(20)
      }
      .backgroundColor(Color.Orange)
      .selectedColor(Color.Gray)
      .padding({
        left: 20, right: 20,
      })
      .onClick(() => {
        if(this.btnTitle==this.titleLocal){
          this.btnTitle=this.titleNet;
          try {
            this.webviewController.loadUrl(this.localUrl);
          } catch (e) {
            console.error(`ErrorCode: ${e.code},  Message: ${e.message}`);
          }
        }else{
          try {
            this.btnTitle=this.titleLocal;
            this.webviewController.loadUrl(this.netUrl);
          } catch (e) {
            console.error(`ErrorCode: ${e.code},  Message: ${e.message}`);
          }
        }

      })
      .margin({
        top: 20,bottom:20
      })
      .height(40)
      Web({ src: this.netUrl, controller: this.webviewController })
    }

  }
}