/*
 * ==---------------------------------------------------------------------------------==
 *
 *  File            :   RSATestVectors
 *  Project         :   Signature
 *  Author          :   ALEXIS AUBRY RADANOVIC
 *
 *  License         :   The MIT License (MIT)
 *
 * ==---------------------------------------------------------------------------------==
 *
 *	The MIT License (MIT)
 *	Copyright (c) 2016 ALEXIS AUBRY RADANOVIC
 *
 *	Permission is hereby granted, free of charge, to any person obtaining a copy of
 *	this software and associated documentation files (the "Software"), to deal in
 *	the Software without restriction, including without limitation the rights to
 *	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 *	the Software, and to permit persons to whom the Software is furnished to do so,
 *	subject to the following conditions:
 *
 *	The above copyright notice and this permission notice shall be included in all
 *	copies or substantial portions of the Software.
 *
 *	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 *	FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 *	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 *	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 *	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * ==---------------------------------------------------------------------------------==
 */

import Hash

///
/// Contains informations about a RSA signature test vector.
///

public struct RSATestVector {
    
    ///
    /// The algorithm that has been used to create the vector.
    ///
    
    let algorithm: HashingAlgorithm
    
    ///
    /// The name of the private key that has been used to sign the message.
    ///
    
    let privateKeyName: String
    
    ///
    /// The name of the public key associated with the private key.
    ///
    
    let publicKeyName: String
    
    let privateKeyPassphrase: String?
    
    ///
    /// The message that has been signed.
    ///
    
    let message: String

    ///
    /// The passphrase of the private key, if any.
    ///

    let expectedSignatureHex: String
    
    init(_ algorithm: HashingAlgorithm, _ privateKeyName: String, _ publicKeyName: String, _ privateKeyPassphrase: String?, _ message: String, _ expectedSignatureHex: String) {
        self.algorithm = algorithm
        self.privateKeyName = privateKeyName
        self.publicKeyName = publicKeyName
        self.privateKeyPassphrase = privateKeyPassphrase
        self.message = message
        self.expectedSignatureHex = expectedSignatureHex
    }
    
}

// MARK: - RSA1024 Test Vectors

///
/// Test vectors for RSA (1024 bits modulo, MD4)
///

var rsa1024withMD4TestVectors: Array<RSATestVector> = [
    RSATestVector(.md4, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "0ca6a9f76a7281a5c161ffbfe0cb83e9e47fe3a9a523dc6d9cb447e29f1e734d40ed4d78316430a70bbd985685ea537c68266007cadd6f07ba71c34b038bde8d4a5bc6bf7a2b869c3fc1cf58be77e3b99ba25db2b15ad34898728745c4c2a583e5fa2ee373ad84f7366ad2d851288f0a01aeb935805ce88c29565533aa4311e4"),
]

///
/// Test vectors for RSA (1024 bits modulo, MD5)
///

var rsa1024withMD5TestVectors: Array<RSATestVector> = [
    RSATestVector(.md5, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "094021c72863ae317b4e8a5a1fd742d539724c060669704ea3d807f962663f5b8e43b5f8a703b098d9e4c8203b88423b96c45060206ae8ee34ffd98b32948b356246a633e27360e790ad822773344e1d71a5e5e51ec288701e6d9c95df225cd6760642418f1a8af07498be4cc73b6f352545d34b4433dc0bfee468bd78891922"),
]

///
/// Test vectors for RSA (1024 bits modulo, SHA1)
///

var rsa1024withSHA1TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha1, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "837d0eca894ba4d793a23d87d209bd9f02b04201122de9ab4ad351b05104b562aa2522ca48ef984b2b0287cba0eda2764de82b05ed4d1388f418f6d96fa85ceb24ebed0c7b531a60c96f9d31773c025ce0b7ad126900dea582d9bca702ab26810387c2d25630f94bd0a10f530e069215872fe9fc01b7bccdce2f0844e5daf30d"),
]

///
/// Test vectors for RSA (1024 bits modulo, SHA224)
///

var rsa1024withSHA224TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha224, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "71a213d313382bb4a08e6f6c6ef24502bc97d52467c206287ee1e2c314ff452a6a63dc728758f17fed02d9f3af2b4a741203e78e9f636d16f234f902fe6944a3bb7a2e64d0d713ef41f9c890222116fe33f042bf788edf1904f948822c1e217c226a1b1a6c4bc11b08757830374a7377da255172e86bb633885d3442018f650c"),
]

///
/// Test vectors for RSA (1024 bits modulo, SHA256)
///

var rsa1024withSHA256TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha256, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "aa0af387f260e4c46ea6ec43cc11bb4ecfaded1f760b0c798b0c0a79f8f1088823c3fd37e5c9cc27e54f69ff3126e51a672d0f680c8845ed96b2c77b0d1574e8e03738d1330359c4ce916d66d611c1e987c56b64bf3f60ea2faa9c6211161352f803b4bec58ba23e1c8330d3c0b1697790b6d06d326e04db5e6ba32b7635bb62"),
]

///
/// Test vectors for RSA (1024 bits modulo, SHA384)
///

var rsa1024withSHA384TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha384, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "556a4044cabf81807ff815a7193d1771fbfb6beeacb708f120ff3968cb19717fe46a518e5d65ecef7d8fe4c95f3d7e4fa7152dc9d7e24ac069fb252b01f963ab3fdbdffdfa3fbf5993da9b96b4733f56c87158a4d3f3584047fd3531aee9a7758de7829e8160cfdc8dfb117481d9bb60e6b874296195489a1e6fe262bec9df49"),
]

///
/// Test vectors for RSA (1024 bits modulo, SHA512)
///

var rsa1024withSHA512TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha512, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "b28382110a15487ebbbd977e9c1e48b1f8043cd4ac58bab76fca41fd762f7c7175551519518b963011881252bcf890ac7e5cbf30dffc8921f1c8081a2bb674b773239cda1f71231236032c4c17e5f1299e8c598f51b20cd47384d807c16ef052048e4ce1850512fb7eb1685a405fe66d78cbb482a28c5680acf7de123ac7d531"),
]

///
/// Test vectors for RSA (1024 bits modulo, RIPEMD160)
///

var rsa1024withRIPEMD160TestVectors: Array<RSATestVector> = [
    RSATestVector(.ripeMd160, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "0839278c6da93ed1fa8c89c58e2e2c4b02e9fb7d920cfaa284a03ef2b33f647a7120aa2a81f2c22fced292e9ac7d5f8039e8a248cc8bf05b5c61d58b593b56a0b4775c37b6b0fefed5bf24273bd8bb0a5af0c08435715fa64f80c8a8e081092e667846fbc412407bd82dbff0f4d622713a7dd847b8d220b9755da67cf23f6684"),
]

// MARK: - RSA1024 Fake Test Vectors

///
/// Fake test vectors for RSA (1024 bits modulo, MD4)
///

var rsa1024withMD4FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.md4, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "1ca6a9f76a7281a5c161ffbfe0cb83e9e47fe3a9a523dc6d9cb447e29f1e734d40ed4d78316430a70bbd985685ea537c68266007cadd6f07ba71c34b038bde8d4a5bc6bf7a2b869c3fc1cf58be77e3b99ba25db2b15ad34898728745c4c2a583e5fa2ee373ad84f7366ad2d851288f0a01aeb935805ce88c29565533aa4311e4"),
]

///
/// Fake test vectors for RSA (1024 bits modulo, MD5)
///

var rsa1024withMD5FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.md5, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "194021c72863ae317b4e8a5a1fd742d539724c060669704ea3d807f962663f5b8e43b5f8a703b098d9e4c8203b88423b96c45060206ae8ee34ffd98b32948b356246a633e27360e790ad822773344e1d71a5e5e51ec288701e6d9c95df225cd6760642418f1a8af07498be4cc73b6f352545d34b4433dc0bfee468bd78891922"),
]

///
/// Fake test vectors for RSA (1024 bits modulo, SHA1)
///

var rsa1024withSHA1FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha1, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "937d0eca894ba4d793a23d87d209bd9f02b04201122de9ab4ad351b05104b562aa2522ca48ef984b2b0287cba0eda2764de82b05ed4d1388f418f6d96fa85ceb24ebed0c7b531a60c96f9d31773c025ce0b7ad126900dea582d9bca702ab26810387c2d25630f94bd0a10f530e069215872fe9fc01b7bccdce2f0844e5daf30d"),
]

///
/// Fake test vectors for RSA (1024 bits modulo, SHA224)
///

var rsa1024withSHA224FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha224, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "81a213d313382bb4a08e6f6c6ef24502bc97d52467c206287ee1e2c314ff452a6a63dc728758f17fed02d9f3af2b4a741203e78e9f636d16f234f902fe6944a3bb7a2e64d0d713ef41f9c890222116fe33f042bf788edf1904f948822c1e217c226a1b1a6c4bc11b08757830374a7377da255172e86bb633885d3442018f650c"),
]

///
/// Fake test vectors for RSA (1024 bits modulo, SHA256)
///

var rsa1024withSHA256FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha256, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "ba0af387f260e4c46ea6ec43cc11bb4ecfaded1f760b0c798b0c0a79f8f1088823c3fd37e5c9cc27e54f69ff3126e51a672d0f680c8845ed96b2c77b0d1574e8e03738d1330359c4ce916d66d611c1e987c56b64bf3f60ea2faa9c6211161352f803b4bec58ba23e1c8330d3c0b1697790b6d06d326e04db5e6ba32b7635bb62"),
]

///
/// Fake test vectors for RSA (1024 bits modulo, SHA384)
///

var rsa1024withSHA384FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha384, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "656a4044cabf81807ff815a7193d1771fbfb6beeacb708f120ff3968cb19717fe46a518e5d65ecef7d8fe4c95f3d7e4fa7152dc9d7e24ac069fb252b01f963ab3fdbdffdfa3fbf5993da9b96b4733f56c87158a4d3f3584047fd3531aee9a7758de7829e8160cfdc8dfb117481d9bb60e6b874296195489a1e6fe262bec9df49"),
]

///
/// Fake test vectors for RSA (1024 bits modulo, SHA512)
///

var rsa1024withSHA512FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha512, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "c28382110a15487ebbbd977e9c1e48b1f8043cd4ac58bab76fca41fd762f7c7175551519518b963011881252bcf890ac7e5cbf30dffc8921f1c8081a2bb674b773239cda1f71231236032c4c17e5f1299e8c598f51b20cd47384d807c16ef052048e4ce1850512fb7eb1685a405fe66d78cbb482a28c5680acf7de123ac7d531"),
]

///
/// Fake test vectors for RSA (1024 bits modulo, RIPEMD160)
///

var rsa1024withRIPEMD160FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.ripeMd160, "rsa_1024_private", "rsa_1024_public", nil, "Signature", "1839278c6da93ed1fa8c89c58e2e2c4b02e9fb7d920cfaa284a03ef2b33f647a7120aa2a81f2c22fced292e9ac7d5f8039e8a248cc8bf05b5c61d58b593b56a0b4775c37b6b0fefed5bf24273bd8bb0a5af0c08435715fa64f80c8a8e081092e667846fbc412407bd82dbff0f4d622713a7dd847b8d220b9755da67cf23f6684"),
]

// MARK: - RSA2048 Test Vectors

///
/// Test vectors for RSA (2048 bits modulo, MD4)
///

var rsa2048withMD4TestVectors: Array<RSATestVector> = [
    RSATestVector(.md4, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "a3e9b219e7cc5d3c0df024ae495c9deb14bcf26045143379d20f26a5df0d89c23fd441954a662639ad5d9030580a3fea7d711785e6971e408c8a0bf083edd9abadd09d0807e1790906990e1b779493f3e81d09eeed4773849a3ef82bb96a1dc290aa8a3874de8ceddbd44f577e000212b49b5705d8a406450f0a3c6bedf65083508b808bb259fa6918d01917d7ca6d0809798c291049df25a51622336f7deccbed7b10b8fd0b305c4810603c0a9c2e356a51a9aca1ae963a85b256525bdf2c75c70146d7c69d02c16a672252b347aec5fcfc4b5634a8208b92a8b02dadfd63d978ad1fcae90c34841decad1dc041c09377bfb3e1587948e77b1bd2c4afb4bca1"),
]

///
/// Test vectors for RSA (2048 bits modulo, MD5)
///

var rsa2048withMD5TestVectors: Array<RSATestVector> = [
    RSATestVector(.md5, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "70b96a945eb67a115e42406484772c233ac381cd1fb263217f03853cea12bf6a7df7137aae598abbbb325231e4bde8c4f784ec30ef617acfa77d37ad2568ccafc6337335e0e8e78e5af6c4019f6113930b999bfb9a91fefa1df71535d10ba799b2a95838bada8fd887be89c07f7ad9dd3ee68676d23d2792a458b88728f4a3c03a3b564d79a75517bfffbf3c7993cdb57ca8cd89270c003416bbaa28b67a74231652c9ef124e5d42f74c830d63e9cc1bc8682e9c4eed522c69cbe046133e803741dcb6407df9acca9e3835706d3680fb0b4c28f654e28746fd6461756d7fac8df3e5b0e60e709bc7fdd093c70d63bd633be48927e3abe90decce78b11f0ef1dd"),
]

///
/// Test vectors for RSA (2048 bits modulo, SHA1)
///

var rsa2048withSHA1TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha1, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "1887fdafdfcdd11ad5b311bfab44ef7d2669f6380eae66d1686e2630ae7d971b5a1133e9044ac38eedd5f3cf87f988d783f459daead96f03631ca1a538e769b9d82ecb4d5439864640c671eb9e62d40e3f1df95c0a61626ecbef328ed5c5e6341732b3ed0db551ac277ebe86129b85268b3afd529f311d1ad4007dead9d8c986ac78b5dfa719ae2eca64102943697fada9526ae2d736249af4bcf39735e9b72484cd88d876adaaf8e528efd19005f955c43eec0cf97e9a8693675d30770eade9690a7f113314bc332f6264978e4135905438d28821570cce43d055b72ed0eca4e61a703121a7492e7492cb53f4a977760e74243bf459680a0b3167110bb7b446"),
]

///
/// Test vectors for RSA (2048 bits modulo, SHA224)
///

var rsa2048withSHA224TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha224, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "1650edfa4e3a51a28c7a7b62360fb3fcd14da84f1a468f40db74d4da03474c93980caa6a9b3c74526887e56b86baa5a0d03618eda94dd7cb41feef2d783576c63d321a47f9ec2067e3c1253c11bb2b38588c12680bb134370405a4d51bdf4b0c30ad568b5cdf99928bc4e45ffe60fa9eccf705434a71054e5383b786871a8fad152af4f76a6e6caa7987f1bda15f7a89a313ad05556e2c68e65c79156540152b9e870a465411c8d922ae45e2720a49ce2dad28388f501a3762b08c0571ec45f94e3d6769831919c103b3a11c63b2801f1359209cd3ade647357a0921eac611149bc904fb16c2efdbe4a150bdbd24baf26ec40b1dbb1457433d06dd4d2e6614a6"),
]

///
/// Test vectors for RSA (2048 bits modulo, SHA256)
///

var rsa2048withSHA256TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha256, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "468028cc227102dd8a8e0583c4de5bd798d039203eba76a5e183bf4869128e1a513f192672dc5983c7dfe1b5fa150e2145a6b9792c08e24c0622433fb6d3ed97615bbce6f370551f51818cfc7f999489254886c200cec8b97540ab5afcb1e5b64670d3c6cce73e055d2767b3729140b9227672c2b4892dcb4023c49267099ba4e6d3359d69c02cc587fa2ac2d5b7e48d2176f6d16bda15569eb5a5c0cb02ba4f9b91fbf030a3c762e6ab5c5b80ebae88c0da9ea7b775a522ee788f4b60ab9841009b72a53764b9388fbcf7fee08e4d86ffd692ec7e5baff5d5a3b3f01b88779029cae2a61e46a4de6ea7cf739c66c46eaf5661889ba35b862331ae3209cfe30a"),
]

///
/// Test vectors for RSA (2048 bits modulo, SHA384)
///

var rsa2048withSHA384TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha384, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "c578a4b276e27871ac3084e2614ac60dfb57ffc9411352141dd48c301cdacd60c76656ef11d3097ef00f08a6d647805e72e7a581bf710fc75e9fc02489433000451156157145faf6127d4d3b9b7d749ca09e2319de29a400a49d0c699031c0efbf8905a99ef7a3b0bca8291570cd2b7e4fb3a94255e455ba7968ed21115b22e9675a889a63dab88341bf471cbb6731564a5146d3b89541496d06099afa602ffb63d45b0e6f79e522c3a10571bd446718651359b49d06c2fdde3c0d7f07401e62c24b48ab67d585c4c79d8f734fa3962893a57d004f0612847ef993404b5e2e2bb9fc175afa79652a43c126458cf6a9956ef8b6e53d7a4fee3374b8448c12bd27"),
]

///
/// Test vectors for RSA (2048 bits modulo, SHA512)
///

var rsa2048withSHA512TestVectors: Array<RSATestVector> = [
    RSATestVector(.sha512, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "c399f823f0cb8bf669202e3d51988e4d05e930660a917228c887bf63e70bc2e45189cde905522e400ac5151f907abacb584aa817e4d2aabe8750179d6cb1bb630905c3cf1b6c2fbc2a9a8dbe75d17caff507f6e13e72078ea11e4adc6556b71f332b95795a4883897a359279da449c692b509ae2e980e58f1672ac9ff72c7bfa691c5803b9337cc3028df06b81d48d2a3c611ec4309d4257f78ec773c282af9a5886a4a9419887ff796615e7ca1ffe43df4f6360483352c182cc96fccd6827c052d55ab7b8315d2ad456455fa99f2c6837e31032c6ecf161e18146e4bc0a8321b5b1445cfbcce434f220593201a3a31f9abd477d4d795815d700c67c719212d0"),
]

///
/// Test vectors for RSA (2048 bits modulo, RIPEMD160)
///

var rsa2048withRIPEMD160TestVectors: Array<RSATestVector> = [
    RSATestVector(.ripeMd160, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "4063f3151edfe92112076a0724a5544828074d0559103e71c946a8891a3cef6bb467afb12e0a607ae6d3572d20e02bfeb85364347f02b9e69950b3ea661369db7af62cffba4f286ed8c31f1a68e811d351a20adeefaf106f17dc647487364a144f9782e6e1559d2def1bc27e61abad3a420999b40dd2a3ca8cff61e53584dd05657433c917036d58b689ada5dc3d759967d8e1fef2fac599d578d90cdef2e3acb73e202cdec6152a643e9f257dd6772f306aa48c2403a8c4d0556204d7bb434c987444753fa8ab325021b1f38c1728cb696f801e2d69eda493a41603d739dad6e462b53aaeae5e4ca23cca3f9de6e1cecb017e2c56abdb1028a7cbe0a5a17f69"),
]

// MARK: - RSA2048 Fake Test Vectors

///
/// Fake test vectors for RSA (2048 bits modulo, MD4)
///

var rsa2048withMD4FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.md4, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "b3e9b219e7cc5d3c0df024ae495c9deb14bcf26045143379d20f26a5df0d89c23fd441954a662639ad5d9030580a3fea7d711785e6971e408c8a0bf083edd9abadd09d0807e1790906990e1b779493f3e81d09eeed4773849a3ef82bb96a1dc290aa8a3874de8ceddbd44f577e000212b49b5705d8a406450f0a3c6bedf65083508b808bb259fa6918d01917d7ca6d0809798c291049df25a51622336f7deccbed7b10b8fd0b305c4810603c0a9c2e356a51a9aca1ae963a85b256525bdf2c75c70146d7c69d02c16a672252b347aec5fcfc4b5634a8208b92a8b02dadfd63d978ad1fcae90c34841decad1dc041c09377bfb3e1587948e77b1bd2c4afb4bca1"),
]

///
/// Fake test vectors for RSA (2048 bits modulo, MD5)
///

var rsa2048withMD5FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.md5, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "80b96a945eb67a115e42406484772c233ac381cd1fb263217f03853cea12bf6a7df7137aae598abbbb325231e4bde8c4f784ec30ef617acfa77d37ad2568ccafc6337335e0e8e78e5af6c4019f6113930b999bfb9a91fefa1df71535d10ba799b2a95838bada8fd887be89c07f7ad9dd3ee68676d23d2792a458b88728f4a3c03a3b564d79a75517bfffbf3c7993cdb57ca8cd89270c003416bbaa28b67a74231652c9ef124e5d42f74c830d63e9cc1bc8682e9c4eed522c69cbe046133e803741dcb6407df9acca9e3835706d3680fb0b4c28f654e28746fd6461756d7fac8df3e5b0e60e709bc7fdd093c70d63bd633be48927e3abe90decce78b11f0ef1dd"),
]

///
/// Fake test vectors for RSA (2048 bits modulo, SHA1)
///

var rsa2048withSHA1FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha1, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "2887fdafdfcdd11ad5b311bfab44ef7d2669f6380eae66d1686e2630ae7d971b5a1133e9044ac38eedd5f3cf87f988d783f459daead96f03631ca1a538e769b9d82ecb4d5439864640c671eb9e62d40e3f1df95c0a61626ecbef328ed5c5e6341732b3ed0db551ac277ebe86129b85268b3afd529f311d1ad4007dead9d8c986ac78b5dfa719ae2eca64102943697fada9526ae2d736249af4bcf39735e9b72484cd88d876adaaf8e528efd19005f955c43eec0cf97e9a8693675d30770eade9690a7f113314bc332f6264978e4135905438d28821570cce43d055b72ed0eca4e61a703121a7492e7492cb53f4a977760e74243bf459680a0b3167110bb7b446"),
]

///
/// Fake test vectors for RSA (2048 bits modulo, SHA224)
///

var rsa2048withSHA224FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha224, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "2650edfa4e3a51a28c7a7b62360fb3fcd14da84f1a468f40db74d4da03474c93980caa6a9b3c74526887e56b86baa5a0d03618eda94dd7cb41feef2d783576c63d321a47f9ec2067e3c1253c11bb2b38588c12680bb134370405a4d51bdf4b0c30ad568b5cdf99928bc4e45ffe60fa9eccf705434a71054e5383b786871a8fad152af4f76a6e6caa7987f1bda15f7a89a313ad05556e2c68e65c79156540152b9e870a465411c8d922ae45e2720a49ce2dad28388f501a3762b08c0571ec45f94e3d6769831919c103b3a11c63b2801f1359209cd3ade647357a0921eac611149bc904fb16c2efdbe4a150bdbd24baf26ec40b1dbb1457433d06dd4d2e6614a6"),
]

///
/// Fake test vectors for RSA (2048 bits modulo, SHA256)
///

var rsa2048withSHA256FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha256, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "568028cc227102dd8a8e0583c4de5bd798d039203eba76a5e183bf4869128e1a513f192672dc5983c7dfe1b5fa150e2145a6b9792c08e24c0622433fb6d3ed97615bbce6f370551f51818cfc7f999489254886c200cec8b97540ab5afcb1e5b64670d3c6cce73e055d2767b3729140b9227672c2b4892dcb4023c49267099ba4e6d3359d69c02cc587fa2ac2d5b7e48d2176f6d16bda15569eb5a5c0cb02ba4f9b91fbf030a3c762e6ab5c5b80ebae88c0da9ea7b775a522ee788f4b60ab9841009b72a53764b9388fbcf7fee08e4d86ffd692ec7e5baff5d5a3b3f01b88779029cae2a61e46a4de6ea7cf739c66c46eaf5661889ba35b862331ae3209cfe30a"),
]

///
/// Fake test vectors for RSA (2048 bits modulo, SHA384)
///

var rsa2048withSHA384FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha384, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "d578a4b276e27871ac3084e2614ac60dfb57ffc9411352141dd48c301cdacd60c76656ef11d3097ef00f08a6d647805e72e7a581bf710fc75e9fc02489433000451156157145faf6127d4d3b9b7d749ca09e2319de29a400a49d0c699031c0efbf8905a99ef7a3b0bca8291570cd2b7e4fb3a94255e455ba7968ed21115b22e9675a889a63dab88341bf471cbb6731564a5146d3b89541496d06099afa602ffb63d45b0e6f79e522c3a10571bd446718651359b49d06c2fdde3c0d7f07401e62c24b48ab67d585c4c79d8f734fa3962893a57d004f0612847ef993404b5e2e2bb9fc175afa79652a43c126458cf6a9956ef8b6e53d7a4fee3374b8448c12bd27"),
]

///
/// Fake test vectors for RSA (2048 bits modulo, SHA512)
///

var rsa2048withSHA512FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.sha512, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "d399f823f0cb8bf669202e3d51988e4d05e930660a917228c887bf63e70bc2e45189cde905522e400ac5151f907abacb584aa817e4d2aabe8750179d6cb1bb630905c3cf1b6c2fbc2a9a8dbe75d17caff507f6e13e72078ea11e4adc6556b71f332b95795a4883897a359279da449c692b509ae2e980e58f1672ac9ff72c7bfa691c5803b9337cc3028df06b81d48d2a3c611ec4309d4257f78ec773c282af9a5886a4a9419887ff796615e7ca1ffe43df4f6360483352c182cc96fccd6827c052d55ab7b8315d2ad456455fa99f2c6837e31032c6ecf161e18146e4bc0a8321b5b1445cfbcce434f220593201a3a31f9abd477d4d795815d700c67c719212d0"),
]

///
/// Fake test vectors for RSA (2048 bits modulo, RIPEMD160)
///

var rsa2048withRIPEMD160FakeTestVectors: Array<RSATestVector> = [
    RSATestVector(.ripeMd160, "rsa_2048_private", "rsa_2048_public", nil, "Signature", "5063f3151edfe92112076a0724a5544828074d0559103e71c946a8891a3cef6bb467afb12e0a607ae6d3572d20e02bfeb85364347f02b9e69950b3ea661369db7af62cffba4f286ed8c31f1a68e811d351a20adeefaf106f17dc647487364a144f9782e6e1559d2def1bc27e61abad3a420999b40dd2a3ca8cff61e53584dd05657433c917036d58b689ada5dc3d759967d8e1fef2fac599d578d90cdef2e3acb73e202cdec6152a643e9f257dd6772f306aa48c2403a8c4d0556204d7bb434c987444753fa8ab325021b1f38c1728cb696f801e2d69eda493a41603d739dad6e462b53aaeae5e4ca23cca3f9de6e1cecb017e2c56abdb1028a7cbe0a5a17f69"),
]
