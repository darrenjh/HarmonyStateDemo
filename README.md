鸿蒙State模型ArkTS的练习demo   
[文档](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/stage-model-development-overview-0000001427744552-V3)

## 一、[创建ArkTS工程](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/start-with-ets-stage-0000001477980905-V3)

说明
支持使用ArkTS低代码开发方式。
低代码开发方式具有丰富的UI界面编辑功能，通过可视化界面开发方式快速构建布局，可有效降低开发者的上手成本并提升开发者构建UI界面的效率。
如需使用低代码开发方式，打开Enable Super Visual开关。

## 二、 [State模型的包结构](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/application-package-structure-stage-0000001478061425-V3)

## 三、 State模型大体介绍

[ArkTS基于TypeScript生态基础上的进一步扩展](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-get-started-0000001504769321-V3)

1. State模型开发指导

* [UIAbility组件](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/uiability-overview-0000001477980929-V3)
* [ExtensionAbility组件](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/4_3extensionability_u7ec4_u4ef6-0000001478340873-V3)
* WindowStage-->WindowManager
* [Context](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/application-context-stage-0000001427744560-V3)
* [ AbilityStage](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/abilitystage-0000001427584604-V3)
  [项目路径App.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2FApp.ets)

2. [State模型应用/组件级配置配置](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/application-configuration-file-overview-stage-0000001428061460-V3)

* [app.json5](AppScope%2Fapp.json5)
  ，应用的全局配置信息。应用的包名、应用名称、图标等.[字段参考](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/app-configuration-file-0000001427584584-V3)
* [module.json5](entry%2Fsrc%2Fmain%2Fmodule.json5)
  ，组件配置，[字段参考](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/module-configuration-file-0000001427744540-V3)

3. [@State装饰器：组件内状态](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-state-0000001474017162-V3)

4. UIAbility组件  
   UIAbility组件是一种包含UI界面的应用组件，主要用于和用户交互。

## 五、 [UI开发](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkui-overview-0000001532577181-V3)

方舟开发框架（简称ArkUI）为HarmonyOS应用的UI开发提供了完整的基础设施，包括简洁的UI语法、丰富的UI功能（组件、布局、动画以及交互事件），以及实时界面预览工具等，可以支持开发者进行可视化界面开发。

针对不同的应用场景及技术背景，方舟开发框架提供了两种开发范式，分别是基于ArkTS的声明式开发范式（简称“声明式开发范式”）和兼容JS的类Web开发范式（简称“类Web开发范式”）。

这里练习的是ArkTS的声明式开发范式，[UI开发概述](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-ui-development-overview-0000001438467628-V3)
### (一) 构建布局
1. [线性布局(Row/Column)](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-linear-0000001504125349-V3)    
Row容器主轴为横向，Column容器主轴为纵向。
[RowColumn.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FRowColumn.ets)
2. [层叠布局(Stack)](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-stack-layout-0000001454605342-V3)  
[StackLayout.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FStackLayout.ets)
3. [弹性布局(Flex)](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-flex-layout-0000001504525013-V3)  
[FlexPage.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FFlexPage.ets)
4. [相对布局(RelativeContainer)](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-relative-layout-0000001455042516-V3)  
[RelativeContainerPage.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FRelativeContainerPage.ets)
5. [栅格布局（GridRow/GridCol)](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-grid-layout-0000001454765270-V3)  
[GridRowGridCol.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FGridRowGridCol.ets)  
6. [媒体查询（mediaquery）](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-media-query-0000001454445606-V3)  
[MediaQueryPage.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2FMediaQueryPage.ets)
7. [创建列表（List）](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-create-list-0000001451074018-V3)  
[ListPage.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FListPage.ets)
8. [创建网格（Grid/GridItem）](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-create-grid-0000001504486057-V3)  
[GridGridItemPage.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FGridGridItemPage.ets)
10. [创建轮播（Swiper）](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-create-looping-0000001454931830-V3)
[SwiperPage.ets](entry%2Fsrc%2Fmain%2Fets%2Fpages%2Flayout%2FSwiperPage.ets)
11. [改善布局性能](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-layout-development-performance-boost-0000001450914106-V3)
如何优化Flex的布局性能
* 使用Column/Row代替Flex。
* 大小不需要变更的子组件主动设置flexShrink属性值为0。
* 优先使用layoutWeight属性替代flexGrow属性和flexShrink属性。

### (二) 添加常用组件
1. 按钮(Button)
2. 单选框（Radio）
3. 切换按钮（Toggle）
4. 进度条（Progress）
5. 文本显示（Text/Span）
6. 文本输入（TextInput/TextArea）
7. 自定义弹窗（CustomDialog）
8. 视频播放（Video）
9. XComponent
### (三) 添加气泡和菜单
### (四) 设置路由和组件导航
### (五) 显示图形
### (六) 使用动画
### (七) 支持交互时间








