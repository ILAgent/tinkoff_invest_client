import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties:
        AdditionalProperties(pubName: 'petstore_api', pubAuthor: 'Johnny dep'),
    inputSpecFile: 'swagger.yaml',
    generatorName: Generator.DART2_API,
    outputDirectory: 'api')
class GeneratorConfig extends OpenapiGeneratorConfig {}
