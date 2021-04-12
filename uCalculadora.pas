unit uCalculadora;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.StdCtrls,
	Vcl.ExtCtrls;

type
	TForm1 = class(TForm)
		Button1 : TButton;
		LabeledEdit1 : TLabeledEdit;
		LabeledEdit2 : TLabeledEdit;
		LabeledEdit3 : TLabeledEdit;
		Button2 : TButton;
		Button3 : TButton;
		Button4 : TButton;
		Button5 : TButton;
		procedure Button5Click(Sender : TObject);
		procedure Button1Click(Sender : TObject);
		procedure Button2Click(Sender : TObject);
		procedure Button3Click(Sender : TObject);
		procedure Button4Click(Sender : TObject);
		private
			{ Private declarations }
		public
			{ Public declarations }
	end;

var
	Form1 : TForm1;

implementation

type
	TProc = function(primeiro, segundo : Double) : Double; stdcall;

{$R *.dfm}

	// function subtrair(primeiro, segundo : Double) : Double; external 'Funcoes.dll';

procedure TForm1.Button1Click(Sender : TObject);
var
	NomeDLL   : String;
	HandleDLL : THandle;
	Proc      : TProc;
begin
	try
		HandleDLL := 0;
		NomeDLL   := 'Funcoes.dll';
		HandleDLL := LoadLibrary(pchar(NomeDLL));
		if HandleDLL <> 0 then
		begin
			@Proc := GetProcAddress(HandleDLL, 'somar');
			if @Proc <> nil then
			begin
				LabeledEdit3.Text := FloatToStr(Proc(StrToFloat(LabeledEdit1.Text), StrToFloat(LabeledEdit2.Text)));
			end;
		end;
	finally
		FreeLibrary(HandleDLL);
	end;
end;

procedure TForm1.Button2Click(Sender : TObject);
var
	NomeDLL   : String;
	HandleDLL : THandle;
	Proc      : TProc;
begin

	try
		HandleDLL := 0;
		NomeDLL   := 'Funcoes.dll';
		HandleDLL := LoadLibrary(pchar(NomeDLL));
		if HandleDLL <> 0 then
		begin
			@Proc := GetProcAddress(HandleDLL, 'subtrair');
			if @Proc <> nil then
			begin
				LabeledEdit3.Text := FloatToStr(Proc(StrToFloat(LabeledEdit1.Text), StrToFloat(LabeledEdit2.Text)));
			end;
		end;
	finally
		FreeLibrary(HandleDLL);
	end;

end;

procedure TForm1.Button3Click(Sender : TObject);
var
	NomeDLL   : String;
	HandleDLL : THandle;
	Proc      : TProc;
begin
	try
		HandleDLL := 0;
		NomeDLL   := 'Funcoes.dll';
		HandleDLL := LoadLibrary(pchar(NomeDLL));
		if HandleDLL <> 0 then
		begin
			@Proc := GetProcAddress(HandleDLL, 'multiplicar');
			if @Proc <> nil then
			begin
				LabeledEdit3.Text := FloatToStr(Proc(StrToFloat(LabeledEdit1.Text), StrToFloat(LabeledEdit2.Text)));
			end;
		end;
	finally
		FreeLibrary(HandleDLL);
	end;
end;

procedure TForm1.Button4Click(Sender : TObject);
var
	NomeDLL   : String;
	HandleDLL : THandle;
	Proc      : TProc;
begin
	try
		HandleDLL := 0;
		NomeDLL   := 'Funcoes.dll';
		HandleDLL := LoadLibrary(pchar(NomeDLL));
		if HandleDLL <> 0 then
		begin
			@Proc := GetProcAddress(HandleDLL, 'dividir');
			if @Proc <> nil then
			begin
				LabeledEdit3.Text := FloatToStr(Proc(StrToFloat(LabeledEdit1.Text), StrToFloat(LabeledEdit2.Text)));
			end;
		end;
	finally
		FreeLibrary(HandleDLL);
	end;
end;

procedure TForm1.Button5Click(Sender : TObject);
begin
	LabeledEdit1.Text := '0';
	LabeledEdit2.Text := '0';
	LabeledEdit3.Text := '0';
end;

end.
