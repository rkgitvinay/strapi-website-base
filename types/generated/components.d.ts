import type { Schema, Attribute } from '@strapi/strapi';

export interface SharedButton extends Schema.Component {
  collectionName: 'components_shared_buttons';
  info: {
    displayName: 'Button';
  };
  attributes: {
    title: Attribute.String;
    link: Attribute.String;
    target: Attribute.String;
  };
}

export interface SharedCard extends Schema.Component {
  collectionName: 'components_shared_cards';
  info: {
    displayName: 'Card';
  };
  attributes: {
    title: Attribute.RichText;
    description: Attribute.RichText;
    slug: Attribute.String;
    links: Attribute.Component<'shared.link', true>;
    images: Attribute.Component<'shared.image', true>;
    buttons: Attribute.Component<'shared.button', true>;
  };
}

export interface SharedImage extends Schema.Component {
  collectionName: 'components_shared_images';
  info: {
    displayName: 'Image';
  };
  attributes: {
    title: Attribute.String;
    url: Attribute.String;
  };
}

export interface SharedLink extends Schema.Component {
  collectionName: 'components_shared_links';
  info: {
    displayName: 'Link';
  };
  attributes: {
    title: Attribute.String;
    slug: Attribute.String;
    fullSlug: Attribute.String;
    imageUrl: Attribute.String;
    target: Attribute.String;
    style: Attribute.RichText;
  };
}

export interface SharedNavigation extends Schema.Component {
  collectionName: 'components_shared_navigations';
  info: {
    displayName: 'Navigation';
  };
  attributes: {
    title: Attribute.String;
    slug: Attribute.String;
    fullSlug: Attribute.String;
    imageUrl: Attribute.String;
    target: Attribute.String;
    style: Attribute.RichText;
    child: Attribute.Component<'shared.link', true>;
  };
}

export interface SharedTitle extends Schema.Component {
  collectionName: 'components_shared_titles';
  info: {
    displayName: 'title';
  };
  attributes: {
    title: Attribute.String;
    url: Attribute.String;
  };
}

export interface SharedVideo extends Schema.Component {
  collectionName: 'components_shared_videos';
  info: {
    displayName: 'Video';
  };
  attributes: {
    title: Attribute.String;
    url: Attribute.String;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'shared.button': SharedButton;
      'shared.card': SharedCard;
      'shared.image': SharedImage;
      'shared.link': SharedLink;
      'shared.navigation': SharedNavigation;
      'shared.title': SharedTitle;
      'shared.video': SharedVideo;
    }
  }
}
