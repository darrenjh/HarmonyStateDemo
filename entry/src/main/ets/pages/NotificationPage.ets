import router from '@ohos.router'
import hilog from '@ohos.hilog';
import NotificationManager from '@ohos.notificationManager';

@Entry
@Component
  /**
   * Notification
   * @Entry表示该自定义组件为入口组件
  * @Component和@State都是装饰器
   * @Component表示自定义组件
  * @State表示组件中的状态变量，状态变量变化会触发UI刷新
   * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-basic-syntax-overview-0000001531611153-V3
   * @State允许修饰的类型：Object、class、string、number、boolean、enum类型
   */
struct NotificationPage {
  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()
  private scroller: Scroller = new Scroller();

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

      Button("点击弹出通知").onClick(()=>{
        let notificationRequest = {
          id: 1,
          content: {
            contentType: NotificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT, // 普通文本类型通知
            normal: {
              title: 'test_title',
              text: 'test_text',
              additionalText: 'test_additionalText',
            }
          }
        }

        NotificationManager.publish(notificationRequest, (err) => {
          if (err) {
            console.error(`[ANS] failed to publish, error[${err}]`);
            return;
          }
          console.info(`[ANS] publish success`);
        });
      }).margin({
        top:30
      })

    }

  }
}
