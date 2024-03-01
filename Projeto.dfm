object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Projeto Cadastro'
  ClientHeight = 442
  ClientWidth = 822
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 184
    Top = 112
    Width = 68
    Height = 15
    Caption = 'ID_CONTATO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 184
    Top = 160
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel
    Left = 184
    Top = 208
    Width = 54
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 456
    Top = 208
    Width = 49
    Height = 15
    Caption = 'CELULAR'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 184
    Top = 253
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit5
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 73
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 818
    object bt_novo: TBitBtn
      Left = 24
      Top = 13
      Width = 73
      Height = 49
      Caption = '&Novo'
      TabOrder = 0
      OnClick = bt_novoClick
    end
    object bt_editar: TBitBtn
      Left = 136
      Top = 13
      Width = 75
      Height = 49
      Caption = '&Editar'
      TabOrder = 1
    end
    object bt_deletar: TBitBtn
      Left = 240
      Top = 13
      Width = 75
      Height = 49
      Caption = '&Deletar'
      TabOrder = 2
    end
    object bt_gravar: TBitBtn
      Left = 360
      Top = 13
      Width = 75
      Height = 49
      Caption = '&Gravar'
      TabOrder = 3
    end
    object bt_cancelar: TBitBtn
      Left = 477
      Top = 13
      Width = 75
      Height = 49
      Caption = '&Cancelar'
      TabOrder = 4
    end
    object bt_atualizar: TBitBtn
      Left = 592
      Top = 13
      Width = 75
      Height = 49
      Caption = '&Atualizar'
      TabOrder = 5
    end
    object bt_sair: TBitBtn
      Left = 712
      Top = 13
      Width = 75
      Height = 49
      Caption = '&Sair'
      TabOrder = 6
    end
  end
  object DBEdit1: TDBEdit
    Left = 184
    Top = 128
    Width = 154
    Height = 23
    DataField = 'ID_CONTATO'
    DataSource = Ds_cadastro
    TabOrder = 1
  end
  object db_nome: TDBEdit
    Left = 184
    Top = 176
    Width = 500
    Height = 23
    DataField = 'NOME'
    DataSource = Ds_cadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 224
    Width = 229
    Height = 23
    DataField = 'TELEFONE'
    DataSource = Ds_cadastro
    MaxLength = 13
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 455
    Top = 224
    Width = 229
    Height = 23
    DataField = 'CELULAR'
    DataSource = Ds_cadastro
    MaxLength = 14
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 184
    Top = 269
    Width = 500
    Height = 23
    DataField = 'EMAIL'
    DataSource = Ds_cadastro
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 0
    Top = 368
    Width = 822
    Height = 74
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 6
    ExplicitTop = 367
    ExplicitWidth = 818
    object DBNavigator1: TDBNavigator
      Left = 272
      Top = 16
      Width = 280
      Height = 41
      DataSource = Ds_cadastro
      TabOrder = 0
    end
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Junior\Documents\Sistema\Banco\CONTATO.FDB'
      'User_Name=SYSDBA'
      'Password=root'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Left = 40
    Top = 96
  end
  object Q_cadastro: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from contato'
      'order by ID_CONTATO')
    Left = 40
    Top = 168
    object Q_cadastroID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_cadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_cadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object Q_cadastroCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Required = True
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object Q_cadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
  end
  object Ds_cadastro: TDataSource
    DataSet = Q_cadastro
    Left = 32
    Top = 248
  end
end
