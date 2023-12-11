import router from '@ohos.router'
import http from '@ohos.net.http';
import hilog from '@ohos.hilog';

@Entry
@Component
  /**
   * 网络
   * @Entry表示该自定义组件为入口组件
  * @Component和@State都是装饰器
   * @Component表示自定义组件
  * @State表示组件中的状态变量，状态变量变化会触发UI刷新
   * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-basic-syntax-overview-0000001531611153-V3
   * @State允许修饰的类型：Object、class、string、number、boolean、enum类型
   */
struct NetPage {
  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()

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

      Button("Http数据请求").onClick(() => {
        let httpRequest = http.createHttp();
        httpRequest.on('headerReceive', (header) => {
          hilog.info(0x0000, 'testTag', '%{public}s', 'headerReceive' + JSON.stringify(header));

        })
        httpRequest.request(
          "m.baidu.com", {
          method: http.RequestMethod.GET,
          header: {
            'Content-Type': "applicaiton/json"
          }
        }, (err, data) => {
          if (!err) {
            // data.result为HTTP响应内容，可根据业务需要进行解析
            hilog.info(0x0000, 'testTag', '%{public}s','Result:' + JSON.stringify(data.result));
            hilog.info(0x0000, 'testTag', '%{public}s','code:' + JSON.stringify(data.responseCode));
            // data.header为HTTP响应头，可根据业务需要进行解析
            hilog.info(0x0000, 'testTag', '%{public}s','header:' + JSON.stringify(data.header));
            hilog.info(0x0000, 'testTag', '%{public}s','cookies:' + JSON.stringify(data.cookies)); // 8+
          } else {
            hilog.info(0x0000, 'testTag', '%{public}s','error:' + JSON.stringify(err));
            // 取消订阅HTTP响应头事件
            hilog.info(0x0000, 'testTag', '%{public}s','headersReceive');
            // 当该请求使用完毕时，调用destroy方法主动销毁
            httpRequest.destroy();
          }
        })


      }).margin({
        top: 30
      })
      Button("WebSocket连接").onClick(() => {

      }).margin({
        top: 30
      })

      Button("Socket连接").onClick(() => {

      }).margin({
        top: 30
      })


    }

  }
}
