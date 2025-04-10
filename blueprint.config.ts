import { Config } from '@ton/blueprint';

export const config: Config = {
    network: {
        endpoint: 'https://api.testnet.ice.io/http/v2/jsonRPC',
        type: 'custom',
        version: 'v2',
        key: '',
    },
};
