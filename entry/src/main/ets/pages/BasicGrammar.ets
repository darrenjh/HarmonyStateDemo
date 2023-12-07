import router from '@ohos.router'
import hilog from '@ohos.hilog'

@Entry
@Component
struct BasicGrammar {
  @State barWidth: number = 320
  @State clickStatus: boolean = false
  @State index: number = 0
  @State params: object = router.getParams()

  build() {
    Column() {
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

      Button("if/else", {
        type: ButtonType.Normal
      })
        .margin({
          top: 20
        })
        .onClick(() => {
          this.clickStatus = !this.clickStatus
        })
        .bindPopup(this.clickStatus, {
          message: '按钮红色了，再点状态变回去',
          primaryButton: {
            value: "确认",
            action: () => {
              this.clickStatus = !this.clickStatus
              hilog.info(0x0000, 'testTag', '%{public}s', '确认被点击');
            }

          },
          secondaryButton: {
            value: "取消",
            action: () => {
              this.clickStatus = !this.clickStatus
              hilog.info(0x0000, 'testTag', '%{public}s', '取消被点击');

            }
          }

        })
        .borderRadius(15)
        .width(this.barWidth)
        .height(50)
        .fontSize(18)
        .fontColor(Color.White)
        .backgroundColor(this.clickStatus ? Color.Red : Color.Gray)

      Button("for" + this.index, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .onClick(() => {

          for (let i = 0; i < 10; i++) {
            hilog.info(0x0000, 'testTag', '%{public}s', 'i=' + i);
            this.index = i;
          }

        })
        .borderRadius(15)
        .width(this.barWidth)
        .height(50)
        .fontSize(18)
        .fontColor(Color.White)
        .backgroundColor(this.clickStatus ? Color.Red : Color.Gray)

    }

  }
}