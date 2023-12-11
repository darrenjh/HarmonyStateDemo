import mediaquery from '@ohos.mediaquery';
import router from '@ohos.router';
import window from '@ohos.window';
import common from '@ohos.app.ability.common';

/**
 * 媒体查询
 * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-media-query-0000001454445606-V3
 */
let portraitFunc = null;

@Entry
@Component
struct MediaQueryPage {
  @State message: string = 'Hello World'
  @State params: object = router.getParams()

  @State color: string = '#DB7093';
  @State text: string = 'Portrait';

  // 当设备横屏时条件成立
  listener = mediaquery.matchMediaSync('(orientation: landscape)');

  // 当满足媒体查询条件时，触发回调
  onPortrait(mediaQueryResult) {
    if (mediaQueryResult.matches) { // 若设备为横屏状态，更改相应的页面布局
      this.color = '#FFD700';
      this.text = 'Landscape';
    } else {
      this.color = '#DB7093';
      this.text = 'Portrait';
    }
  }

  aboutToAppear() {
    // 绑定当前应用实例
    portraitFunc = this.onPortrait.bind(this);
    // 绑定回调函数
    this.listener.on('change', portraitFunc);
  }


  // 改变设备横竖屏状态函数
  private changeOrientation(isLandscape: boolean) {
    // 获取UIAbility实例的上下文信息
    let context = getContext(this) as common.UIAbilityContext;
    // 调用该接口手动改变设备横竖屏状态
    window.getLastWindow(context).then((lastWindow) => {
      lastWindow.setPreferredOrientation(isLandscape ? window.Orientation.LANDSCAPE : window.Orientation.PORTRAIT)
    });
  }



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
      Column({ space: 50 }) {
        Text(this.text).fontSize(50).fontColor(this.color)
        Text('Landscape').fontSize(50).fontColor(this.color).backgroundColor(Color.Orange)
          .onClick(() => {
            this.changeOrientation(true);
          })
        Text('Portrait').fontSize(50).fontColor(this.color).backgroundColor(Color.Orange)
          .onClick(() => {
            this.changeOrientation(false);
          })
      }
      .width('100%').height('100%')
    }

  }
}