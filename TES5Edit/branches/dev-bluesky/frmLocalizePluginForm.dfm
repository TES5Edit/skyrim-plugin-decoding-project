﻿object frmLocalizePlugin: TfrmLocalizePlugin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '插件本地化'
  ClientHeight = 83
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  DesignSize = (
    592
    83)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 569
    Height = 34
    AutoSize = False
    Caption = 
      '本地化操作将生成 String 文件，里面包含本地化文本。你可以使用其他工具（如 StrEdit ）对生成的 String 文件翻译。'
    WordWrap = True
  end
  object gbTranslation: TGroupBox
    Left = 8
    Top = 56
    Width = 569
    Height = 257
    Enabled = False
    TabOrder = 0
    Visible = False
    object Label2: TLabel
      Left = 16
      Top = 15
      Width = 71
      Height = 13
      Caption = '源语言'
    end
    object Label3: TLabel
      Left = 296
      Top = 13
      Width = 59
      Height = 13
      Caption = '目标语言'
    end
    object clbFrom: TCheckListBox
      Left = 16
      Top = 32
      Width = 257
      Height = 209
      ItemHeight = 13
      TabOrder = 0
    end
    object clbTo: TCheckListBox
      Left = 296
      Top = 32
      Width = 257
      Height = 209
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object cbTranslation: TCheckBox
    Left = 24
    Top = 48
    Width = 73
    Height = 17
    Caption = '翻译'
    TabOrder = 1
    Visible = False
    OnClick = cbTranslationClick
  end
  object btnOK: TButton
    Left = 206
    Top = 51
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '本地化'
    ModalResult = 1
    TabOrder = 2
    ExplicitTop = 319
  end
  object btnCancel: TButton
    Left = 304
    Top = 51
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '取消'
    ModalResult = 2
    TabOrder = 3
    ExplicitTop = 319
  end
end
