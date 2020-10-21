import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties:
        AdditionalProperties(pubName: 'tinkoff_api', pubAuthor: 'IL_Agent'),
    inputSpecFile: 'swagger.yaml',
    generatorName: Generator.DART_DIO,
    outputDirectory: 'tinkoff_api')
class GeneratorConfig extends OpenapiGeneratorConfig {}
