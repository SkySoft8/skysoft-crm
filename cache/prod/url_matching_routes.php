<?php

/**
 * This file has been auto-generated
 * by the Symfony Routing Component.
 */

return [
    false, // $matchHost
    [ // $staticRoutes
        '/api/graphql' => [[['_route' => 'api_graphql_entrypoint', '_controller' => 'api_platform.graphql.action.entrypoint', '_graphql' => true], null, null, null, false, false, null]],
        '/api/graphql/graphql_playground' => [[['_route' => 'api_graphql_graphql_playground', '_controller' => 'api_platform.graphql.action.graphql_playground', '_graphql' => true], null, ['GET' => 0, 'HEAD' => 1], null, false, false, null]],
        '/docs/rest' => [[['_route' => 'swagger_ui', '_controller' => 'api_platform.swagger.action.ui'], null, null, null, false, false, null]],
        '/docs/graphql' => [[['_route' => 'graphiql', '_controller' => 'api_platform.graphql.action.graphql_playground'], null, null, null, false, false, null]],
        '/saml/metadata' => [[['_route' => 'saml_metadata', 'idp' => null, '_controller' => 'Nbgrp\\OneloginSamlBundle\\Controller\\Metadata'], null, null, null, false, false, null]],
        '/saml/acs' => [[['_route' => 'saml_acs', 'idp' => null, '_controller' => 'Nbgrp\\OneloginSamlBundle\\Controller\\AssertionConsumerService'], null, null, null, false, false, null]],
        '/saml/login' => [[['_route' => 'saml_login', 'idp' => null, '_controller' => 'Nbgrp\\OneloginSamlBundle\\Controller\\Login'], null, null, null, false, false, null]],
        '/saml/logout' => [[['_route' => 'saml_logout', 'idp' => null, '_controller' => 'Nbgrp\\OneloginSamlBundle\\Controller\\Logout'], null, ['POST' => 0, 'GET' => 1], null, false, false, null]],
        '/2fa_check' => [[['_route' => 'app_2fa_check'], null, null, null, false, false, null]],
        '/login' => [[['_route' => 'app_login', '_controller' => 'App\\Authentication\\Controller\\SecurityController::login'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/2fa/enable' => [[['_route' => 'app_2fa_enable', '_controller' => 'App\\Authentication\\Controller\\SecurityController::enable2fa'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/2fa/disable' => [[['_route' => 'app_2fa_disable', '_controller' => 'App\\Authentication\\Controller\\SecurityController::disable2fa'], null, ['GET' => 0], null, false, false, null]],
        '/2fa/enable-finalize' => [[['_route' => 'app_2fa_enable_finalize', '_controller' => 'App\\Authentication\\Controller\\SecurityController::enableFinalize2fa'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/logout' => [[['_route' => 'app_logout', '_controller' => 'App\\Authentication\\Controller\\SecurityController::logout'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/session-status' => [[['_route' => 'app_session_status', '_controller' => 'App\\Authentication\\Controller\\SecurityController::sessionStatus'], null, ['GET' => 0], null, false, false, null]],
        '/auth/login' => [[['_route' => 'native_auth_login', '_controller' => 'App\\Authentication\\Controller\\SecurityController::nativeAuthLogin'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/auth/logout' => [[['_route' => 'native_auth_logout', '_controller' => 'App\\Authentication\\Controller\\SecurityController::nativeAuthLogout'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/auth/session-status' => [[['_route' => 'native_auth_session_status', '_controller' => 'App\\Authentication\\Controller\\SecurityController::nativeAuthSessionStatus'], null, ['GET' => 0], null, false, false, null]],
        '/auth/2fa_check' => [[['_route' => 'native_auth_2fa_check', '_controller' => 'App\\Authentication\\Controller\\SecurityController::nativeCheckTwoFactorCode'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/' => [[['_route' => 'index', '_stateless' => false, '_controller' => 'App\\Engine\\Controller\\IndexController::index'], null, ['GET' => 0], null, false, false, null]],
        '/auth' => [[['_route' => 'nativeAuth', '_controller' => 'App\\Engine\\Controller\\IndexController::nativeAuth'], null, ['GET' => 0], null, false, false, null]],
        '/logged-out' => [[['_route' => 'logged-out', '_stateless' => false, '_controller' => 'App\\Engine\\Controller\\IndexController::loggedOut'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
        '/ep' => [[['_route' => 'empty_ep_route', '_stateless' => false, '_controller' => 'App\\EntryPoint\\Controller\\EntryPointController::emptyEntryPoint'], null, ['GET' => 0, 'POST' => 1], null, false, false, null]],
    ],
    [ // $regexpList
        0 => '{^(?'
                .'|/api(?'
                    .'|/(?'
                        .'|\\.well\\-known/genid/([^/]++)(*:46)'
                        .'|errors/(\\d+)(*:65)'
                        .'|validation_errors/([^/]++)(*:98)'
                    .')'
                    .'|(?:/(index)(?:\\.([^/]++))?)?(*:134)'
                    .'|/(?'
                        .'|docs(?:\\.([^/]++))?(*:165)'
                        .'|contexts/([^.]+)(?:\\.(jsonld))?(*:204)'
                        .'|va(?'
                            .'|lidation_errors/([^/]++)(?'
                                .'|(*:244)'
                            .')'
                            .'|rdef/field\\-definitions/([^/\\.]++)(?:\\.([^/]++))?(*:302)'
                        .')'
                        .'|record(?'
                            .'|/([^/]++)(*:329)'
                            .'|\\-list/([^/]++)(*:352)'
                        .')'
                        .'|a(?'
                            .'|pp\\-(?'
                                .'|list\\-strings/([^/]++)(*:394)'
                                .'|strings/([^/]++)(*:418)'
                                .'|metadata/([^/]++)(*:443)'
                            .')'
                            .'|rchived\\-document\\-media\\-objects(?'
                                .'|/([^/\\.]++)(?:\\.([^/]++))?(*:514)'
                                .'|(?:\\.([^/]++))?(?'
                                    .'|(*:540)'
                                .')'
                            .')'
                        .')'
                        .'|m(?'
                            .'|od(?'
                                .'|\\-strings/([^/]++)(*:578)'
                                .'|ule\\-metadata/([^/]++)(*:608)'
                            .')'
                            .'|etadata/view\\-definitions(?'
                                .'|/([^/\\.]++)(?:\\.([^/]++))?(*:671)'
                                .'|(?:\\.([^/]++))?(*:694)'
                            .')'
                        .')'
                        .'|p(?'
                            .'|r(?'
                                .'|ivate\\-(?'
                                    .'|document\\-media\\-objects(?'
                                        .'|/([^/\\.]++)(?:\\.([^/]++))?(*:775)'
                                        .'|(?:\\.([^/]++))?(?'
                                            .'|(*:801)'
                                        .')'
                                    .')'
                                    .'|image\\-media\\-objects(?'
                                        .'|/([^/\\.]++)(?:\\.([^/]++))?(*:861)'
                                        .'|(?:\\.([^/]++))?(?'
                                            .'|(*:887)'
                                        .')'
                                    .')'
                                .')'
                                .'|ocesses(?'
                                    .'|/([^/\\.]++)(?:\\.([^/]++))?(?'
                                        .'|(*:937)'
                                    .')'
                                    .'|(?:\\.([^/]++))?(*:961)'
                                .')'
                            .')'
                            .'|ublic\\-(?'
                                .'|document\\-media\\-objects(?'
                                    .'|/([^/\\.]++)(?:\\.([^/]++))?(*:1034)'
                                    .'|(?:\\.([^/]++))?(?'
                                        .'|(*:1061)'
                                    .')'
                                .')'
                                .'|image\\-media\\-objects(?'
                                    .'|/([^/\\.]++)(?:\\.([^/]++))?(*:1122)'
                                    .'|(?:\\.([^/]++))?(?'
                                        .'|(*:1149)'
                                    .')'
                                .')'
                            .')'
                        .')'
                        .'|user(?'
                            .'|s/([^/\\.]++)(?:\\.([^/]++))?(*:1196)'
                            .'|\\-preferences(?'
                                .'|/([^/\\.]++)(?:\\.([^/]++))?(*:1247)'
                                .'|(?:\\.([^/]++))?(*:1271)'
                            .')'
                        .')'
                        .'|navbars/([^/\\.]++)(?:\\.([^/]++))?(*:1315)'
                        .'|batched\\-statistics/([^/]++)(*:1352)'
                        .'|s(?'
                            .'|tatistics/([^/\\.]++)(?:\\.([^/]++))?(*:1400)'
                            .'|ystem\\-configs(?'
                                .'|/([^/\\.]++)(?:\\.([^/]++))?(*:1452)'
                                .'|(?:\\.([^/]++))?(*:1476)'
                            .')'
                        .')'
                        .'|theme\\-images/([^/]++)(*:1509)'
                    .')'
                .')'
                .'|/ep/([^/]++)(*:1532)'
                .'|/media/(?'
                    .'|documents/([^/]++)(*:1569)'
                    .'|archived/([^/]++)(*:1595)'
                    .'|images/([^/]++)(*:1619)'
                .')'
            .')/?$}sDu',
    ],
    [ // $dynamicRoutes
        46 => [[['_route' => 'api_genid', '_controller' => 'api_platform.action.not_exposed', '_api_respond' => 'true'], ['id'], ['GET' => 0, 'HEAD' => 1], null, false, true, null]],
        65 => [[['_route' => 'api_errors', '_controller' => 'api_platform.action.error_page'], ['status'], ['GET' => 0, 'HEAD' => 1], null, false, true, null]],
        98 => [[['_route' => 'api_validation_errors', '_controller' => 'api_platform.action.not_exposed'], ['id'], ['GET' => 0, 'HEAD' => 1], null, false, true, null]],
        134 => [[['_route' => 'api_entrypoint', '_controller' => 'api_platform.action.entrypoint', '_format' => '', '_api_respond' => 'true', 'index' => 'index'], ['index', '_format'], ['GET' => 0, 'HEAD' => 1], null, false, true, null]],
        165 => [[['_route' => 'api_doc', '_controller' => 'api_platform.action.documentation', '_format' => '', '_api_respond' => 'true'], ['_format'], ['GET' => 0, 'HEAD' => 1], null, false, true, null]],
        204 => [[['_route' => 'api_jsonld_context', '_controller' => 'api_platform.jsonld.action.context', '_format' => 'jsonld', '_api_respond' => 'true'], ['shortName', '_format'], ['GET' => 0, 'HEAD' => 1], null, false, true, null]],
        244 => [
            [['_route' => '_api_validation_errors_problem', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'ApiPlatform\\Validator\\Exception\\ValidationException', '_api_operation_name' => '_api_validation_errors_problem'], ['id'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_validation_errors_hydra', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'ApiPlatform\\Validator\\Exception\\ValidationException', '_api_operation_name' => '_api_validation_errors_hydra'], ['id'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_validation_errors_jsonapi', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'ApiPlatform\\Validator\\Exception\\ValidationException', '_api_operation_name' => '_api_validation_errors_jsonapi'], ['id'], ['GET' => 0], null, false, true, null],
        ],
        302 => [[['_route' => '_api_/vardef/field-definitions/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\FieldDefinitions\\Entity\\FieldDefinition', '_api_operation_name' => '_api_/vardef/field-definitions/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        329 => [[['_route' => '_api_/record/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Data\\Entity\\Record', '_api_operation_name' => '_api_/record/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        352 => [[['_route' => '_api_/record-list/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Data\\Entity\\RecordList', '_api_operation_name' => '_api_/record-list/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        394 => [[['_route' => '_api_/app-list-strings/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Languages\\Entity\\AppListStrings', '_api_operation_name' => '_api_/app-list-strings/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        418 => [[['_route' => '_api_/app-strings/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Languages\\Entity\\AppStrings', '_api_operation_name' => '_api_/app-strings/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        443 => [[['_route' => '_api_/app-metadata/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Metadata\\Entity\\AppMetadata', '_api_operation_name' => '_api_/app-metadata/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        514 => [[['_route' => '_api_/archived-document-media-objects/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\ArchivedDocumentMediaObject', '_api_operation_name' => '_api_/archived-document-media-objects/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        540 => [
            [['_route' => '_api_/archived-document-media-objects{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\ArchivedDocumentMediaObject', '_api_operation_name' => '_api_/archived-document-media-objects{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_/archived-document-media-objects{._format}_post', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\ArchivedDocumentMediaObject', '_api_operation_name' => '_api_/archived-document-media-objects{._format}_post'], ['_format'], ['POST' => 0], null, false, true, null],
        ],
        578 => [[['_route' => '_api_/mod-strings/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Languages\\Entity\\ModStrings', '_api_operation_name' => '_api_/mod-strings/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        608 => [[['_route' => '_api_/module-metadata/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Metadata\\Entity\\ModuleMetadata', '_api_operation_name' => '_api_/module-metadata/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        671 => [[['_route' => '_api_/metadata/view-definitions/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\ViewDefinitions\\Entity\\ViewDefinition', '_api_operation_name' => '_api_/metadata/view-definitions/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        694 => [[['_route' => '_api_/metadata/view-definitions{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\ViewDefinitions\\Entity\\ViewDefinition', '_api_operation_name' => '_api_/metadata/view-definitions{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null]],
        775 => [[['_route' => '_api_/private-document-media-objects/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PrivateDocumentMediaObject', '_api_operation_name' => '_api_/private-document-media-objects/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        801 => [
            [['_route' => '_api_/private-document-media-objects{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PrivateDocumentMediaObject', '_api_operation_name' => '_api_/private-document-media-objects{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_/private-document-media-objects{._format}_post', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PrivateDocumentMediaObject', '_api_operation_name' => '_api_/private-document-media-objects{._format}_post'], ['_format'], ['POST' => 0], null, false, true, null],
        ],
        861 => [[['_route' => '_api_/private-image-media-objects/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PrivateImageMediaObject', '_api_operation_name' => '_api_/private-image-media-objects/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        887 => [
            [['_route' => '_api_/private-image-media-objects{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PrivateImageMediaObject', '_api_operation_name' => '_api_/private-image-media-objects{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_/private-image-media-objects{._format}_post', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PrivateImageMediaObject', '_api_operation_name' => '_api_/private-image-media-objects{._format}_post'], ['_format'], ['POST' => 0], null, false, true, null],
        ],
        937 => [
            [['_route' => '_api_/processes/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Process\\Entity\\Process', '_api_operation_name' => '_api_/processes/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_/processes/{id}{._format}_put', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Process\\Entity\\Process', '_api_operation_name' => '_api_/processes/{id}{._format}_put'], ['id', '_format'], ['PUT' => 0], null, false, true, null],
        ],
        961 => [[['_route' => '_api_/processes{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Process\\Entity\\Process', '_api_operation_name' => '_api_/processes{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null]],
        1034 => [[['_route' => '_api_/public-document-media-objects/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PublicDocumentMediaObject', '_api_operation_name' => '_api_/public-document-media-objects/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        1061 => [
            [['_route' => '_api_/public-document-media-objects{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PublicDocumentMediaObject', '_api_operation_name' => '_api_/public-document-media-objects{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_/public-document-media-objects{._format}_post', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PublicDocumentMediaObject', '_api_operation_name' => '_api_/public-document-media-objects{._format}_post'], ['_format'], ['POST' => 0], null, false, true, null],
        ],
        1122 => [[['_route' => '_api_/public-image-media-objects/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PublicImageMediaObject', '_api_operation_name' => '_api_/public-image-media-objects/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        1149 => [
            [['_route' => '_api_/public-image-media-objects{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PublicImageMediaObject', '_api_operation_name' => '_api_/public-image-media-objects{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null],
            [['_route' => '_api_/public-image-media-objects{._format}_post', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => false, '_api_resource_class' => 'App\\MediaObjects\\Entity\\PublicImageMediaObject', '_api_operation_name' => '_api_/public-image-media-objects{._format}_post'], ['_format'], ['POST' => 0], null, false, true, null],
        ],
        1196 => [[['_route' => '_api_/users/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Module\\Users\\Entity\\User', '_api_operation_name' => '_api_/users/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        1247 => [[['_route' => '_api_/user-preferences/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\UserPreferences\\Entity\\UserPreference', '_api_operation_name' => '_api_/user-preferences/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        1271 => [[['_route' => '_api_/user-preferences{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\UserPreferences\\Entity\\UserPreference', '_api_operation_name' => '_api_/user-preferences{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null]],
        1315 => [[['_route' => '_api_/navbars/{userID}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Navbar\\Entity\\Navbar', '_api_operation_name' => '_api_/navbars/{userID}{._format}_get'], ['userID', '_format'], ['GET' => 0], null, false, true, null]],
        1352 => [[['_route' => '_api_/batched-statistics/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Statistics\\Entity\\BatchedStatistics', '_api_operation_name' => '_api_/batched-statistics/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        1400 => [[['_route' => '_api_/statistics/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Statistics\\Entity\\Statistic', '_api_operation_name' => '_api_/statistics/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        1452 => [[['_route' => '_api_/system-configs/{id}{._format}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\SystemConfig\\Entity\\SystemConfig', '_api_operation_name' => '_api_/system-configs/{id}{._format}_get'], ['id', '_format'], ['GET' => 0], null, false, true, null]],
        1476 => [[['_route' => '_api_/system-configs{._format}_get_collection', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\SystemConfig\\Entity\\SystemConfig', '_api_operation_name' => '_api_/system-configs{._format}_get_collection'], ['_format'], ['GET' => 0], null, false, true, null]],
        1509 => [[['_route' => '_api_/theme-images/{id}_get', '_controller' => 'api_platform.action.placeholder', '_format' => null, '_stateless' => true, '_api_resource_class' => 'App\\Themes\\Entity\\ThemeImages', '_api_operation_name' => '_api_/theme-images/{id}_get'], ['id'], ['GET' => 0], null, false, true, null]],
        1532 => [[['_route' => 'generic_ep_route', '_stateless' => false, '_controller' => 'App\\EntryPoint\\Controller\\EntryPointController::genericEntryPoint'], ['name'], ['GET' => 0, 'POST' => 1], null, false, true, null]],
        1569 => [[['_route' => 'media_documents', '_stateless' => false, '_controller' => 'App\\MediaObjects\\Controller\\MediaController::downloadDocument'], ['id'], ['GET' => 0], null, false, true, null]],
        1595 => [[['_route' => 'media_archived', '_stateless' => false, '_controller' => 'App\\MediaObjects\\Controller\\MediaController::downloadArchived'], ['id'], ['GET' => 0], null, false, true, null]],
        1619 => [
            [['_route' => 'media_image', '_stateless' => false, '_controller' => 'App\\MediaObjects\\Controller\\MediaController::downloadImage'], ['id'], ['GET' => 0], null, false, true, null],
            [null, null, null, null, false, false, 0],
        ],
    ],
    null, // $checkCondition
];
