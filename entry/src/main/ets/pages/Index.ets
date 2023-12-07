import router from '@ohos.router'
import hilog from '@ohos.hilog';

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
struct Index {
  @State actionBarTitle: string = "Harmony Os(ArkTS)"
  private btnStrArray: String[] = ["基本语法", "构建布局", "媒体查询(mediaqery)",
    "添加组件", "设置路由和组件导航", "显示图形", "使用动画", "交互事件",
    "Web", "通知", "窗口管理", "WebGL", "媒体（音视频、图片等）", "安全", "网络与连接", "电话服务",
    "数据管理", "文件管理", "后台任务（Backgroud Task）管理", "设备管理", "DFX",
    "国际化", "应用测试（自动化测试框架）", "Native"
  ];

  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 18
  scroller: Scroller = new Scroller();

  build() {
    Column() {
      // 标题栏
      Text(this.actionBarTitle)
        .fontColor(Color.White)
        .fontSize(20)
        .width('100%')
        .height(50)
        .textAlign(TextAlign.Center)
        .fontWeight(FontWeight.Bold)
        .backgroundColor(Color.Gray)
      //滚动列表
      Scroll(this.scroller) {
        //Column容器中，space属性设置排列方向上子元素的间距
        Column({ space: 20 }) {
          ForEach(this.btnStrArray, (item: string, index: number) => {
            Button(item, { type: ButtonType.Normal })
              .borderRadius(15)
              .backgroundColor(Color.Gray)
              .fontColor(Color.White)
              .fontSize(this.btnFontSize)
              .width(this.btnWidth)
              .height(this.btnHeight)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                doClick(item, index)
              })
          }, (item: string) => item)
        }
      }
      .width('100%')
      .height('100%')
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .scrollable(ScrollDirection.Vertical)
      .padding({ top: 20, bottom: 100 })

    }

  }
}

/**
 * 按钮的点击事件
 * @param btnStr 按钮文案
 * @param index 按钮下标
 */
function doClick(btnStr: String, index: number) {
  hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + btnStr + '界面,index:' + index);
  var url = 'pages/layout/LayoutPage'
  switch (index) {
    case 0: //基础语法
      url = 'pages/BasicGrammar'
      break
    case 1: //构建布局
      url = 'pages/layout/LayoutPage'
      break
    case 2: //媒体查询
      url = 'pages/MediaQueryPage'
      break
    default:
      break
  }
  router.pushUrl({
    url: url,
    params: {
      title: btnStr
    }
  }).then(() => {
    hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + btnStr + '界面');
  }).catch((err) => {
    hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
  })
}
