import 'package:tdlib/td_api.dart';
import 'package:tdlib/td_client.dart';

class TelegramAuth {
  int client_id;
  TdlibParameters tdlib_params;
  TelegramAuth(){
    login();
  }

   login() async {
    client_id = await TdClient.createClient();
    TdObject obj = await TdClient.clientReceive(client_id, 2.0);
    TdClient.clientSend(client_id, SetTdlibParameters(
        parameters: TdlibParameters(
          useTestDc: true,
          databaseDirectory: './TdLib_database_dir',
          filesDirectory: './TdLib_files_dir',
          useFileDatabase: true,
          useChatInfoDatabase: true,
          useMessageDatabase: true,
          useSecretChats: false,
          apiId: 994745,
          apiHash: '98552bd6ce07b3053feeb115f8792aa6',
          systemLanguageCode: 'en',
          deviceModel: 'Iphone 11 Pro Max',
          systemVersion:'13.3',
          applicationVersion: '0.1',
          enableStorageOptimizer: false,
          ignoreFileNames: false
        )
      )
    );
  }
}